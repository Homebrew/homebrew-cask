cask "proclaim" do
  arch arm: "-arm"

  version "4.19.0.0167"
  sha256 arm:   "232e988c4421cf92def1e1f36cb33f423e4ef6ae55c5bcf025054b3ca60a2542",
         intel: "d2e8355f7b3e85642c5fac3581bc819b7d9187b63ee5d7762c6172e49d6e4ce2"

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
  depends_on macos: :monterey

  app "Proclaim.app"

  zap trash: [
    "~/Library/Application Support/Proclaim",
    "~/Library/Preferences/com.logos.Proclaim.plist",
    "~/Library/Saved Application State/com.logos.Proclaim.savedState",
  ]
end
