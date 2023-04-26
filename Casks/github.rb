cask "github" do
  arch arm: "arm64", intel: "x64"
  platform = on_arch_conditional arm: "darwin-arm64", intel: "darwin"

  version "3.2.2-508c0b4d"
  sha256 arm:   "f8781b9b6f4ec208b149234c920384d4138c03d61aef20a36640a994b974706b",
         intel: "f4011d2564a64c2697a6d8146dd311889871594f2f3323d13f74a3409e1972b9"

  url "https://desktop.githubusercontent.com/github-desktop/releases/#{version}/GitHubDesktop-#{arch}.zip",
      verified: "desktop.githubusercontent.com/github-desktop/"
  name "GitHub Desktop"
  desc "Desktop client for GitHub repositories"
  homepage "https://desktop.github.com/"

  livecheck do
    url "https://central.github.com/deployments/desktop/desktop/latest/#{platform}"
    regex(%r{(\d+(?:\.\d+)[^/]*)/GitHubDesktop[._-]#{arch}\.zip}i)
    strategy :header_match
  end

  auto_updates true
  conflicts_with cask: "homebrew/cask-versions/github-beta"

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
        "~/Library/Logs/GitHub Desktop",
        "~/Library/Preferences/ByHost/com.github.GitHubClient.ShipIt.*.plist",
        "~/Library/Preferences/com.github.GitHubClient.helper.plist",
        "~/Library/Preferences/com.github.GitHubClient.plist",
      ],
      rmdir: "~/.config/git"
end
