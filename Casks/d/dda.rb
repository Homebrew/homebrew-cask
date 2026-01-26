cask "dda" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-gnu"

  version "0.31.0"
  sha256 arm:          "1288af1c55879551457e1b30239974035c0b4f46b493b73109e950ab072b9778",
         intel:        "41b546d27f1e81c192508ac4c610c8e016f95b0b515f5faafebad9790c1788ca",
         arm64_linux:  "6fb9eee10c5766c760965b425b2f9c3131570f6327b5168d455f31f6c7d4723a",
         x86_64_linux: "5f6880bf17ff3c6a762a9aadc9e733c7ac5147e3316f3245d203e493d383233c"

  url "https://github.com/DataDog/datadog-agent-dev/releases/download/v#{version}/dda-#{arch}-#{os}.tar.gz"
  name "dda"
  desc "Tool for developing on the Datadog Agent platform"
  homepage "https://github.com/DataDog/datadog-agent"

  auto_updates true

  binary "dda"

  uninstall script: {
    executable: "dda",
    args:       ["self", "remove"],
  }

  # No zap stanza required
end
