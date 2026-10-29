cask "copilot-language-server" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.563.0"
  sha256 arm:          "98ddde9bb698cc85a52978dcdd04ab6cc5d3754e30e982820ddcdad48f5b9986",
         intel:        "090029e396227968d522398b8f4bfd74272b0c35bcc51ad5970c646094a54fbb",
         arm64_linux:  "b2bf8133ea2202a39a7eb4d42bc039b9b0b6ed16fba0bd0516f8919b88e1084d",
         x86_64_linux: "b76a967f75e4fb10de183422654fa86809d185bdcbf4832e9fd63f57865ddfae"

  url "https://github.com/github/copilot-language-server-release/releases/download/#{version}/copilot-language-server-#{os}-#{arch}-#{version}.zip"
  name "GitHub Copilot Language Server"
  desc "Language Server Protocol server for GitHub Copilot"
  homepage "https://github.com/github/copilot-language-server-release"

  binary "copilot-language-server"

  zap :not_required
end
