cask "logos" do
  arch arm: "-arm"

  version "54.1.0.0004"
  sha256 arm:   "4b11ae961bd547d248f6569c4282f6ea4917744c4e75afc39e8f43d495a3e69a",
         intel: "61df3006db54cf4647c45930a0af17b0179ceb053b6a2f6068f9f0869883a092"

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
