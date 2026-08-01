cask "grok-build" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"

  version "0.2.118"
  sha256 arm:          "2de5b9609a03492dd6b9e4cca9637d651fe998bb8371bf9f852e7b28b38c034e",
         intel:        "93183cfb072df88cbac707e44f8bbc62d9474d2047e9c8605519c64b720e2689",
         arm64_linux:  "54010e335aace6b5dedd022539ece7bc83f38253e8636aaf0796562aeecb2e67",
         x86_64_linux: "c192282e62abd24a9be64750363ff827d806ba613918399a8c69c815b1da08f6"

  url "https://x.ai/cli/grok-#{version}-#{os}-#{arch}"
  name "Grok Build"
  desc "Extensible coding agent for the terminal"
  homepage "https://x.ai/cli"

  livecheck do
    url "https://x.ai/cli/stable"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  binary "grok-#{version}-#{os}-#{arch}", target: "grok"
  binary "grok-#{version}-#{os}-#{arch}", target: "agent"
  generate_completions_from_executable "grok-#{version}-#{os}-#{arch}", "completions", base_name: "grok"

  zap rmdir: "~/.grok"
end
