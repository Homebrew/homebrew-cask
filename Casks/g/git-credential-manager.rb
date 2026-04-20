cask "git-credential-manager" do
  arch arm: "arm64", intel: "x64"
  os macos: "osx", linux: "linux"

  container_ext = on_system_conditional linux: "tar.gz", macos: "pkg"

  version "2.7.3"
  sha256 arm:          "9b4a4008b505a5878a4ee3e7e906b84cbc595e499d92d2c382e0a9f587a8861a",
         intel:        "5638e6aef7dfc097ba5f9ceb6fcefaa05187859404de19a680e329bd97047f17",
         arm64_linux:  "291763d626106891d794b17bd7c02fe77c3d9924193fdde9e284d1d1f3fe5c21",
         x86_64_linux: "c7935c3e1b22681d56011b580086aeb6d60f3f0aaf6ef9c581480356988ff804"

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
