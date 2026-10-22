cask "copilot-language-server" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.558.0"
  sha256 arm:          "337eb72ac44e6fc2f6e839ec298d1d311aa895312b57e761caafc1af738f5b9a",
         intel:        "4425d3a87ed69d2b645dc33a17e4c637d8f2f11e8b98ae3963a4e33f29250ff7",
         arm64_linux:  "d3273f3bbff29c03fe4417a5a568e64db34c3d799fe91c69c1d6b702cd8baa2e",
         x86_64_linux: "3fe6d39b7c33bcca6769b712100e3ceb0970fd17b7fc1e9cb81a43649cfe76d6"

  url "https://github.com/github/copilot-language-server-release/releases/download/#{version}/copilot-language-server-#{os}-#{arch}-#{version}.zip"
  name "GitHub Copilot Language Server"
  desc "Language Server Protocol server for GitHub Copilot"
  homepage "https://github.com/github/copilot-language-server-release"

  binary "copilot-language-server"

  # No zap stanza required
end
