cask "github" do
  version "2.9.4-24101633"

  if Hardware::CPU.intel?
    sha256 "a7e2f0749b440d401a053b14abd4833e2087552711a835067e7d3d25e3f09cb9"
    url "https://desktop.githubusercontent.com/github-desktop/releases/#{version}/GitHubDesktop-x64.zip",
        verified: "githubusercontent.com/"
  else
    sha256 "63d199d31fa82b8e39f0d3412a07232053477a5906b18d0327914e2618910035"
    url "https://desktop.githubusercontent.com/github-desktop/releases/#{version}/GitHubDesktop-arm64.zip",
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
