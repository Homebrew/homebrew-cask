cask "proclaim" do
  arch arm: "-arm"

  version "4.16.0.0367"
  sha256 arm:   "57c56c0e849d95fe0e1bb8efdd7c97a1dc6d9e88752a5c704c2a2a03593f366f",
         intel: "2dd677bb1e53bf9728851e51cfa2c9223ad223862d5fd34c05fef4d92469fcea"

  url "https://downloads.logoscdn.com/Proclaim/Installer/#{version}/Proclaim#{arch}.dmg",
      verified: "logoscdn.com/Proclaim/"
  name "Proclaim"
  desc "Church presentation software"
  homepage "https://proclaim.logos.com/"

  livecheck do
    url "https://clientservices.logos.com/update/v1/feed/proclaim-mac/stable.xml"
    strategy :xml do |xml|
      xml.get_elements("//logos:version")&.map { |item| item.text&.strip }
    end
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Proclaim.app"

  zap trash: [
    "~/Library/Application Support/Proclaim",
    "~/Library/Preferences/com.logos.Proclaim.plist",
    "~/Library/Saved Application State/com.logos.Proclaim.savedState",
  ]
end
