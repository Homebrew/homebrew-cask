cask "logos" do
  version "9.17.0.0010"
  sha256 "c515ce4002732445801ce8d132558e03ef59db64db4b9b0f15b558be6c9c575b"

  url "https://downloads.logoscdn.com/LBS#{version.major}/Installer/#{version}/LogosMac.dmg",
      verified: "downloads.logoscdn.com/"
  name "Logos"
  desc "Bible study software"
  homepage "https://www.logos.com/"

  livecheck do
    url "https://clientservices.logos.com/update/v1/feed/logos#{version.major}-mac/stable.xml"
    regex(%r{<logos:version[^>]*>(\d+(?:\.\d+)+)</logos:version>}i)
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "Logos.app"

  uninstall launchctl: "com.logos.LogosIndexer",
            quit:      "com.logos.Logos"

  zap trash: [
    "~/Library/Preferences/com.logos.Logos.plist",
    "~/Library/Preferences/com.logos.LogosCEF.plist",
    "~/Library/Preferences/com.logos.LogosIndexer.plist",
  ]
end
