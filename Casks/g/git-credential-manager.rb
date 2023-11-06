cask "git-credential-manager" do
  arch arm: "arm64", intel: "x64"

  version "2.4.1"
  sha256 arm:   "c70ca3a7184fa8d5af0e55419777096d26fa7ad6a1ecd82c3970a3f7c92eb574",
         intel: "ab8b938d649d5849b39c4e830f9043316877defec6dc008e6482ae5252bfcc74"

  url "https://github.com/git-ecosystem/git-credential-manager/releases/download/v#{version.major_minor_patch}/gcm-osx-#{arch}-#{version.major_minor_patch}.pkg",
      verified: "github.com/git-ecosystem/git-credential-manager/"
  name "Git Credential Manager"
  desc "Cross-platform Git credential storage for multiple hosting providers"
  homepage "https://aka.ms/gcm"

  livecheck do
    url :url
    strategy :github_latest
  end

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
