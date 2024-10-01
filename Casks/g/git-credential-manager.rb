cask "git-credential-manager" do
  arch arm: "arm64", intel: "x64"

  version "2.6.0"
  sha256 arm:   "b373cb79cddc21c113c29db8d1acae7614a99d65cffcf6657401807dcf464f74",
         intel: "a32cb0895ae29aa21e968b0422eacace64f16204098a1fd11189ddf911b19585"

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
