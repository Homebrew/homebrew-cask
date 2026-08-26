cask "logos" do
  arch arm: "-arm"

  version "53.1.0.0002"
  sha256 arm:   "d37a843c5a1fe5ee53bf9d774e07dcac8f1f5391e0e0c68a720f40c282970889",
         intel: "f9d45282b396f0c124df0562334a7d34d6e413d1d2aaba6a3061949337ea33d1"

  url "https://downloads.logoscdn.com/LBS10/Installer/#{version}/LogosMac#{arch}.dmg",
      verified: "downloads.logoscdn.com/"
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
