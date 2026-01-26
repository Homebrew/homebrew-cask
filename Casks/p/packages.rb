cask "packages" do
  version "1.2.10"
  sha256 "9d9a73a64317ea6697a380014d2e5c8c8188b59d5fb8ce8872e56cec06cd78e8"

  url "https://github.com/packagesdev/packages/releases/download/v#{version}/Packages.dmg",
      verified: "github.com/packagesdev/packages/"
  name "Packages"
  desc "Integrated packaging environment"
  homepage "http://s.sudre.free.fr/Software/Packages/about.html"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

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
