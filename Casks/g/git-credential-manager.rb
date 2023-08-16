cask "git-credential-manager" do
  arch arm: "arm64", intel: "x64"

  version "2.3.1"
  sha256 arm:   "8b7be6ae4a3819bc4a5493346a8d5a04a9a7ec0c8b0f97b1f4eab48fe52d73d6",
         intel: "54fcb18da0dada0d3cd41c25796716b496a2931ac0ae2be3515d6fb5fbbce8de"

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
