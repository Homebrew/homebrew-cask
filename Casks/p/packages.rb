cask "packages" do
  version "1.2.11"
  sha256 "c7d599842562b18f8dfb6e9f76fc915dde7716a263c967aaf1fe11e17d283ded"

  url "https://github.com/packagesdev/packages/releases/download/v#{version}-GM/Packages.dmg",
      verified: "github.com/packagesdev/packages/"
  name "Packages"
  desc "Integrated packaging environment"
  homepage "http://s.sudre.free.fr/Software/Packages/about.html"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on :macos

  pkg "Install Packages.pkg"

  uninstall script: {
    executable: "Extras/uninstall.sh",
    sudo:       true,
  }

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/fr.whitebox.packages.sfl*",
    "~/Library/Caches/fr.whitebox.Packages",
    "~/Library/Preferences/fr.whitebox.Packages.plist",
  ]
end
