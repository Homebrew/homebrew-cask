cask "logos" do
  arch arm: "-arm"

  version "23.0.0.0030"
  sha256 arm:   "96491d877e94a46605df794ea41409b5e43be17e0cde3436e85361494025f88a",
         intel: "5ee3f2917c440ae576489cdfe6b2b7da03d85cdd2489ccbc7c2e20f298d21782"

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
