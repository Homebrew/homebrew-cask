cask "logos" do
  arch arm: "-arm"

  version "52.0.0.0307"
  sha256 arm:   "e2d5d353c37828c0879567fbb22e9fb99a09aa99956fac79421b7f13e2cf5287",
         intel: "b894eeec4bed8a97bc9ea1f1711c382fa507a4b93f5591285cd3c5b4d9a866b6"

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
