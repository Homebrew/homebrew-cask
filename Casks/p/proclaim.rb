cask "proclaim" do
  arch arm: "-arm"

  version "4.21.0.0174"
  sha256 arm:   "efb5cfafe5e281268df09f02aacdfeec13fb84072bc750d705f23052070b6f3a",
         intel: "3e73ea7ffa976e4aaeca567b1b15410cd9bbd0bb005a4688c9b577331d7ad838"

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
