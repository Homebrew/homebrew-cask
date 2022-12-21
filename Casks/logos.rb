cask "logos" do
  arch arm: "-arm"

  version "10.1.0.0056"
  sha256 arm:   "ae992c1e6ecbce8113044aa31838c4bc91b87083585c75ae7271eaaff13ad5db",
         intel: "0bffc3463c81e4448b4125e4418b68ca5aab4ae011faf8ecbfd905c09d3c0631"

  url "https://downloads.logoscdn.com/LBS#{version.major}/Installer/#{version}/LogosMac#{arch}.dmg",
      verified: "downloads.logoscdn.com/"
  name "Logos"
  desc "Bible study software"
  homepage "https://www.logos.com/"

  livecheck do
    url "https://clientservices.logos.com/update/v1/feed/logos#{version.major}-mac/stable.xml"
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
