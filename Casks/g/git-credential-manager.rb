cask "git-credential-manager" do
  arch arm: "arm64", intel: "x64"
  os macos: "osx", linux: "linux"

  container_ext = on_system_conditional linux: "tar.gz", macos: "pkg"

  version "2.9.1"
  sha256 arm:          "3b499fb5d580359d30a21b0aacc9f3314ed4df29a747b52425f647c095e37828",
         intel:        "2eaa8829d064b381023ebe4202a3ca3883ff2441e799c885dcd78318b6cdf183",
         arm64_linux:  "cf3806b7528b5a5af16bd4bd0683202fc432d9008dd91d20c4c6744b24a033b5",
         x86_64_linux: "31fc151c3b111ffe25616a4356bd9a50bdcdbd0922c5e11990fb220c6caf1ce1"

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
