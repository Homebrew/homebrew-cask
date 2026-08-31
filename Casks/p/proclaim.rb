cask "proclaim" do
  arch arm: "-arm"

  version "4.20.0.0126"
  sha256 arm:   "2c7673bd31c0a3a3df9a4d32ae36f823a98114736f1e765227c606ef3b5a6f17",
         intel: "afac1c2625724d21520929ff5bb8d8d13c416ff90d49bf3bcf2539a31c3af501"

  url "https://downloads.logoscdn.com/Proclaim/Installer/#{version}/Proclaim#{arch}.dmg"
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
