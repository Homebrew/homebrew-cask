cask "logos" do
  version "9.4.0.0009"
  sha256 "5d5a4e451e7059ed976263aa0c70e31ad0ccac06c65b08b691bf707e2d43be24"

  url "https://downloads.logoscdn.com/LBS#{version.major}/Installer/#{version}/LogosMac.dmg",
      verified: "downloads.logoscdn.com/"
  name "Logos"
  desc "Bible study software"
  homepage "https://www.logos.com/"

  livecheck do
    url "https://clientservices.logos.com/update/v1/feed/logos#{version.major}-mac/stable.xml"
    strategy :page_match
    regex(%r{<logos:version[^>]*>(\d+(?:\.\d+)*)</logos:version>}i)
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "Logos.app"

  uninstall launchctl: "com.logos.LogosIndexer",
            quit:      "com.logos.Logos"

  zap trash: [
    "~/Library/Preferences/com.logos.LogosIndexer.plist",
    "~/Library/Preferences/com.logos.LogosCEF.plist",
    "~/Library/Preferences/com.logos.Logos.plist",
  ]
end
