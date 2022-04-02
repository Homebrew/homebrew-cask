cask "github" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"
  platform = Hardware::CPU.intel? ? "darwin" : "darwin-arm64"

  version "2.9.12-c058bcc5"

  if Hardware::CPU.intel?
    sha256 "0a9763d939108c9efd0b4ed39a5ba547e6ae9b0a7c027f988c91f038ffd9cc8e"
  else
    sha256 "e1680b1ee97ed1376fcb87ab49f67924881106bf0ef5fb57f8891376de671b4f"
  end

  url "https://desktop.githubusercontent.com/github-desktop/releases/#{version}/GitHubDesktop-#{arch}.zip",
      verified: "desktop.githubusercontent.com/github-desktop/"
  name "GitHub Desktop"
  desc "Desktop client for GitHub repositories"
  homepage "https://desktop.github.com/"

  livecheck do
    url "https://central.github.com/deployments/desktop/desktop/latest/#{platform}"
    strategy :header_match
    regex(%r{(\d+(?:\.\d+)[^/]*)/GitHubDesktop[._-]#{arch}\.zip}i)
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
