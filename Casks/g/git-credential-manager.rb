cask "git-credential-manager" do
  arch arm: "arm64", intel: "x64"
  os macos: "osx", linux: "linux"
  url_end = on_system_conditional macos: "pkg", linux: "tar.gz"

  version "3.0.1"
  sha256 arm:          "0da49073ee2ae0a632d2990964795fb7ba245f2e61ec9c2d0a1d73f0bdc141b1",
         intel:        "631a24fcd33a16364ae62e65fa020677d3c156e832dd7fd9fa1f35451290bc83",
         arm64_linux:  "e211d6fcda12ac1e2ca4ff634eeedc8da792fa80e66d009b5de34f81c7516dce",
         x86_64_linux: "f35e2b5a819b52bee2eaeed7da7226a3c04c75a3b3d23052580c2240f9029981"

  on_macos do
    pkg "gcm-osx-#{arch}-#{version}.pkg"

    uninstall script:  {
                executable: "/usr/local/share/gcm-core/uninstall.sh",
                sudo:       true,
              },
              pkgutil: "com.microsoft.gitcredentialmanager"

    zap trash: [
      "~/Library/Preferences/git-credential-manager-ui.plist",
      "~/Library/Preferences/git-credential-manager.plist",
    ]
  end
  on_linux do
    depends_on formula: "icu4c"

    binary "git-credential-manager"
  end

  url "https://github.com/git-ecosystem/git-credential-manager/releases/download/v#{version.major_minor_patch}/gcm-#{os}-#{arch}-#{version.major_minor_patch}.#{url_end}"
  name "Git Credential Manager"
  desc "Cross-platform Git credential storage for multiple hosting providers"
  homepage "https://aka.ms/gcm"

  livecheck do
    url :url
    strategy :github_latest
  end
end
