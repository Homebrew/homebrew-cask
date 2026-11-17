cask "logos" do
  arch arm: "-arm"

  version "55.0.0.0362"
  sha256 arm:   "86b0ce5e7eed2ad60a26986a760b3ba4fc9b4793678e4a4ef7c25d6fbc8c5d02",
         intel: "91e4a6ae0a789de0078a9607a56962e7534db25d4ab9d6a5ebafbdaf55bf87e6"

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
