cask "logos" do
  arch arm: "-arm"

  version "54.2.0.0004"
  sha256 arm:   "0dcd191b880d701ee26340f37bec8c58c0b910362f6aa421528c6bb4cc963ae0",
         intel: "3b6e87935e3814d7f4f6c342e2a5bf485808840c908ed6196cc2239bfebc5482"

  url "https://downloads.logoscdn.com/LBS10/Installer/#{version}/LogosMac#{arch}.dmg"
  name "Logos"
  desc "Bible study software"
  homepage "https://www.logos.com/"

  livecheck do
    url "https://clientservices.logos.com/update/v1/feed/logos10-mac/stable.xml"
    strategy :xml do |xml|
      xml.get_elements("//logos:version")&.map { |item| item.text&.strip }
    end
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Logos.app"

  uninstall launchctl: "com.logos.LogosIndexer",
            quit:      ["com.logos.desktop.logos", "com.logos.desktop.logossplashscreen", "com.logos.Logos"]

  zap trash: [
    "~/Library/Application Support/Logos4",
    "~/Library/LaunchAgents/com.logos.desktop.logosindexer.plist",
    "~/Library/Preferences/com.logos.*.plist",
  ]
end
