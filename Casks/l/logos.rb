cask "logos" do
  arch arm: "-arm"

  version "54.0.0.0252"
  sha256 arm:   "57c77bcce7c16da811d11d8d2fbaf86debdea9dc7e3206904e097f65906a2a2a",
         intel: "ef1b8692ae24f90dce506381ab8ce037cc5ae6598ae77591084cac09e298f84c"

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
