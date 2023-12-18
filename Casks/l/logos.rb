cask "logos" do
  arch arm: "-arm"

  version "30.1.0.0038"
  sha256 arm:   "6abbb6efe0b6bcf67d522b13db8e9f2214c1e2d4a6d4c2a5f9e0cae48d00d6ab",
         intel: "546d1deca41f66f299082f70b5eed71453be081d358a258fc440580953d9d84b"

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
