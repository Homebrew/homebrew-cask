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
    version "3.5.1-42a2e52a"
    sha256 arm:   "e74f7d8f57e9d9baef5a5614016d4e331a6d7f209f2bb97db79b8d369bfe5944",
           intel: "98befee119b412abbef4402c1945c2060439d6088f78425d9e7b1fd19d4c782e"

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
