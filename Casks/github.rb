cask "github" do
  version "2.9.0-4806a6dc"

  if Hardware::CPU.intel?
    sha256 "2f799a2ee4d9d9e359dbea2ed9759dd412021bf2c03f2c54740e5a6e95c947ea"
    url "https://desktop.githubusercontent.com/releases/#{version}/GitHubDesktop-x64.zip",
        verified: "githubusercontent.com/"
  else
    sha256 "6739b2477a747761caa89fda1e68b8a362fec693accf8f2173b2f6954698d537"
    url "https://desktop.githubusercontent.com/releases/#{version}/GitHubDesktop-arm64.zip",
        verified: "githubusercontent.com/"
  end

  name "GitHub Desktop"
  desc "Desktop client for GitHub repositories"
  homepage "https://desktop.github.com/"

  livecheck do
    url "https://central.github.com/deployments/desktop/desktop/latest/darwin"
    strategy :header_match
    regex(%r{(\d+(?:\.\d+)[^/]*)/GitHubDesktop-(arm64|x64)\.zip}i)
  end

  auto_updates true
  conflicts_with cask: "homebrew/cask-versions/github-beta"

  app "GitHub Desktop.app"
  binary "#{appdir}/GitHub Desktop.app/Contents/Resources/app/static/github.sh", target: "github"

  zap trash: [
    "~/Library/Application Support/GitHub Desktop",
    "~/Library/Application Support/com.github.GitHubClient",
    "~/Library/Application Support/com.github.GitHubClient.ShipIt",
    "~/Library/Application Support/ShipIt_stderr.log",
    "~/Library/Application Support/ShipIt_stdout.log",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.github.GitHubClient.sfl*",
    "~/Library/Caches/com.github.GitHubClient",
    "~/Library/Caches/com.github.GitHubClient.ShipIt",
    "~/Library/Preferences/com.github.GitHubClient.helper.plist",
    "~/Library/Preferences/com.github.GitHubClient.plist",
    "~/Library/Preferences/ByHost/com.github.GitHubClient.ShipIt.*.plist",
    "~/Library/Logs/GitHub Desktop",
  ],
      rmdir: "~/.config/git"
end
