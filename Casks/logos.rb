cask "logos" do
  version "9.8.0.0010"
  sha256 "9e297a2be4344c84fc7314107809bb6eb80c5cf8c7d3c8c06f190c73647d3cfd"

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
