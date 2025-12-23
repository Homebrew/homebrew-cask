cask "packages" do
  version "1.2.10"
  sha256 :no_check

  url "http://s.sudre.free.fr/Software/files/Packages.dmg"
  name "Packages"
  desc "Integrated packaging environment"
  homepage "http://s.sudre.free.fr/Software/Packages/about.html"

  # Artifact not available over HTTPS
  disable! date: "2025-12-23", because: :no_longer_meets_criteria

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
