cask "git-credential-manager" do
  arch arm: "arm64", intel: "x64"

  version "2.3.0"
  sha256 arm:   "8acfa913307140c06ec9b2692f9abfef32ecde4c83634d728597a94d34e0e773",
         intel: "2c835e24eb5223ef190c528f12a7d7054b8ca143f7399ab23f61c68c0b8e029b"

  url "https://github.com/git-ecosystem/git-credential-manager/releases/download/v#{version.major_minor_patch}/gcm-osx-#{arch}-#{version.major_minor_patch}.pkg",
      verified: "github.com/git-ecosystem/git-credential-manager/"
  name "Git Credential Manager"
  desc "Cross-platform Git credential storage for multiple hosting providers"
  homepage "https://aka.ms/gcm"

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
