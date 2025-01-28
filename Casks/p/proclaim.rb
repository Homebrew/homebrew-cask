cask "proclaim" do
  arch arm: "-arm"

  version "4.8.0.0154"
  sha256 arm:   "0a26e9e6d8a81a01314d4998f30a4ea66c6f9c9b859ad3dccfc267ae014f2ae6",
         intel: "cc63a089085a1adb04ebb8ce4a63cfedc0727cd268b94fbeb36e11347da3ed42"

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
  depends_on macos: ">= :big_sur"

  app "Proclaim.app"

  zap trash: [
    "~/Library/Application Support/Proclaim",
    "~/Library/Preferences/com.logos.Proclaim.plist",
    "~/Library/Saved Application State/com.logos.Proclaim.savedState",
  ]
end
