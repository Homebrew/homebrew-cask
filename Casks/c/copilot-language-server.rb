cask "copilot-language-server" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.562.0"
  sha256 arm:          "ea691704fd86604e394d3db12fd8c2f0ce4e062ee937a0b7146d8f779b8735f6",
         intel:        "4566bd2fe391fa405c20e207f1d5c7182ccac7477194605ef179302e2e9eec48",
         arm64_linux:  "d9cd294d69652e88ac5fae755ff852904f070549e12cbfac3368147aab178e4b",
         x86_64_linux: "57fb99dcbdf47547c63ecec7174c65c6ae348ecf2e5206b436ba9715e75c607f"

  url "https://github.com/github/copilot-language-server-release/releases/download/#{version}/copilot-language-server-#{os}-#{arch}-#{version}.zip"
  name "GitHub Copilot Language Server"
  desc "Language Server Protocol server for GitHub Copilot"
  homepage "https://github.com/github/copilot-language-server-release"

  binary "copilot-language-server"

  zap :not_required
end
