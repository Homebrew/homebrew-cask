cask "git-credential-manager" do
  arch arm: "arm64", intel: "x64"

  version "2.6.1"
  sha256 arm:   "0e42d96334dd502fb3c43ab7aaaee573edef7fa8f6e5c1743f08ea1901bdf445",
         intel: "c0b4fd1dbf53b1a321666fa551a96ee815fbd1cf5e57959ae9e8fb1ac0e6a38b"

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
