cask "github" do
  arch arm: "arm64", intel: "x64"
  platform = on_arch_conditional arm: "darwin-arm64", intel: "darwin"

  on_mojave :or_older do
    version "3.3.13-1b0804db"
    sha256 "df85436557e7b3d709cc702b751f180f48655a3241cce6a864e55cf5161d9a7a"

    livecheck do
      skip "Legacy version"
    end
  end
  on_catalina :or_newer do
    version "3.4.10-07e3f676"
    sha256 arm:   "9ed3f7ff736cd54dd4a78bae832191b16632625f0aac1a5cc0687d1618ccd06a",
           intel: "5e739f1757851972577a6fb0cdb868a64e8b2e68bc0c453ce45d6e9498772daa"

    livecheck do
      url "https://central.github.com/deployments/desktop/desktop/latest/#{platform}"
      regex(%r{(\d+(?:\.\d+)[^/]*)/GitHubDesktop[._-]#{arch}\.zip}i)
      strategy :header_match
    end
  end

  url "https://desktop.githubusercontent.com/releases/#{version}/GitHubDesktop-#{arch}.zip",
      verified: "desktop.githubusercontent.com/"
  name "GitHub Desktop"
  desc "Desktop client for GitHub repositories"
  homepage "https://desktop.github.com/"

  auto_updates true
  conflicts_with cask: "github@beta"
  depends_on macos: ">= :high_sierra"

  app "GitHub Desktop.app"
  binary "#{appdir}/GitHub Desktop.app/Contents/Resources/app/static/github.sh", target: "github"

  zap trash: [
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.github.GitHubClient.sfl*",
        "~/Library/Application Support/com.github.GitHubClient",
        "~/Library/Application Support/com.github.GitHubClient.ShipIt",
        "~/Library/Application Support/GitHub Desktop",
        "~/Library/Application Support/ShipIt_stderr.log",
        "~/Library/Application Support/ShipIt_stdout.log",
        "~/Library/Caches/com.github.GitHubClient",
        "~/Library/Caches/com.github.GitHubClient.ShipIt",
        "~/Library/HTTPStorages/com.github.GitHubClient",
        "~/Library/Logs/GitHub Desktop",
        "~/Library/Preferences/ByHost/com.github.GitHubClient.ShipIt.*.plist",
        "~/Library/Preferences/com.github.GitHubClient.helper.plist",
        "~/Library/Preferences/com.github.GitHubClient.plist",
        "~/Library/Saved Application State/com.github.GitHubClient.savedState",
      ],
      rmdir: "~/.config/git"
end
