cask "logos" do
  arch arm: "-arm"

  version "52.2.0.0019"
  sha256 arm:   "f55a0f26a34e4d156d9209add458085999da11b4ae208fbcedf78105fa822e5c",
         intel: "809f89ea0cc968bf15066bac0f49a66d50b6603f7dd36436c1a1d79f7427b43a"

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
            quit:      "com.logos.Logos"

  zap trash: [
    "~/Library/LaunchAgents/com.logos.desktop.logosindexer.plist",
    "~/Library/Preferences/com.logos.*.plist",
  ]
end
