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
    version "3.4.15-3fea2a10"
    sha256 arm:   "ef5ba0ce8b515b0b57cb7b0fa2686386d5827b29bdf7ff1d7be496a23fc5ca5c",
           intel: "ce7d86982427da69faa447bc1cc4f4c46e5614ed27f6aae9d5c034586ad77235"

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
