cask "logos" do
  arch arm: "-arm"

  version "27.2.0.0021"
  sha256 arm:   "607c234a4575a19a9d5dac0c80a3b5c437ebbaa760c7f595ea9f4c51a2ee1442",
         intel: "2ced7613ec68a6530984469888739dd7fcad6dc27bfaeaf7bbdec0dab2585c5b"

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
