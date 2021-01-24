cask "logos" do
  version "9.2.0.0014"
  sha256 "cc82f4c116145b7e67a985d57a4c302627d1fedd67099894454dbee4a0ae9c9c"

  url "https://downloads.logoscdn.com/LBS#{version.major}/Installer/#{version}/LogosMac.dmg",
      verified: "downloads.logoscdn.com/"
  name "Logos Bible Software"
  desc "Bible study software from Faithlife"
  homepage "https://www.logos.com/"

  livecheck do
    url "https://clientservices.logos.com/update/v1/feed/logos#{version.major}-mac/stable.xml"
    strategy :page_match
    regex(%r{<logos:version>(\d+(?:\.\d+\.\d+\.\d+)*)</logos:version>}i)
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
