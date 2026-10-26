cask "git-credential-manager" do
  arch arm: "arm64", intel: "x64"
  os macos: "osx", linux: "linux"
  url_end = on_system_conditional macos: "pkg", linux: "tar.gz"

  version "3.0.2"
  sha256 arm:          "4391c392785e0087a5b120c23c4ffa1c4aa4aed1e15c6ded084db4e1f8baa398",
         intel:        "e12385440bfd9a8fadc5b1f2174b3c21017923acc2e48a30b953ef023e1625e2",
         arm64_linux:  "650360154f92bfdd4e836043453410385fb53c06630280aabcb8ece6143a1706",
         x86_64_linux: "b8e59e22a830006ca4d93e34513effbb2d9fc0c45d9ccf40395eaab7c4c1b97e"

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
