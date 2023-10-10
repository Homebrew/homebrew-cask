cask "logos" do
  arch arm: "-arm"

  version "28.3.0.0044"
  sha256 arm:   "d2e5280b6c05574dd20828252a6378f7c9972e290c6d9261a10b4f8af2e43202",
         intel: "a3a57eec69804f4e6c6e790ffdd96f3bca0f61933a3201911bf4958fce2564f8"

  url "https://downloads.logoscdn.com/LBS10/Installer/#{version}/LogosMac#{arch}.dmg",
      verified: "downloads.logoscdn.com/"
  name "Logos"
  desc "Bible study software"
  homepage "https://www.logos.com/"

  livecheck do
    url "https://clientservices.logos.com/update/v1/feed/logos10-mac/stable.xml"
    regex(%r{<logos:version[^>]*>(\d+(?:\.\d+)+)</logos:version>}i)
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Logos.app"

  uninstall launchctl: "com.logos.LogosIndexer",
            quit:      "com.logos.Logos"

  zap trash: [
    "~/Library/Preferences/com.logos.Logos.plist",
    "~/Library/Preferences/com.logos.LogosCEF.plist",
    "~/Library/Preferences/com.logos.LogosIndexer.plist",
  ]
end
