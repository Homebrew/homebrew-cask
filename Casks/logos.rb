cask "logos" do
  version "9.3.0.0052"
  sha256 "569e175d9a2092744044cee82e467ce50edac3e7ebac6410cd51491e9113279d"

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
