cask "git-credential-manager" do
  arch arm: "arm64", intel: "x64"
  os macos: "osx", linux: "linux"

  container_ext = on_system_conditional linux: "tar.gz", macos: "pkg"

  version "2.8.0"
  sha256 arm:          "687ab927a4e2aa2e3298a777c0185f6e1b85bef0e77e7010fb0f6929da2c8b4e",
         intel:        "c304c5d704b35255c8b8a6e1d45cf3c58d1daaf08c73b3f8503eab53c45c6498",
         arm64_linux:  "6e1782b351eec3399db43699ff4fe2a1bf576654310ee4580aa4867705c0bc08",
         x86_64_linux: "6040c849b428a4e5b78594fd4fd2819fc3ea4ca472c13580b65a486bef9df21d"

  url "https://github.com/git-ecosystem/git-credential-manager/releases/download/v#{version.major_minor_patch}/gcm-#{os}-#{arch}-#{version.major_minor_patch}.#{container_ext}",
      verified: "github.com/git-ecosystem/git-credential-manager/"
  name "Git Credential Manager"
  desc "Cross-platform Git credential storage for multiple hosting providers"
  homepage "https://aka.ms/gcm"

  livecheck do
    url :url
    strategy :github_latest
  end

  on_macos do
    pkg "gcm-osx-#{arch}-#{version}.pkg"

    uninstall script:  {
                executable: "/usr/local/share/gcm-core/uninstall.sh",
                sudo:       true,
              },
              pkgutil: "com.microsoft.GitCredentialManager"

    zap trash: [
      "~/Library/Preferences/git-credential-manager-ui.plist",
      "~/Library/Preferences/git-credential-manager.plist",
    ]
  end

  on_linux do
    depends_on formula: "icu4c"

    binary "git-credential-manager"
  end
end
