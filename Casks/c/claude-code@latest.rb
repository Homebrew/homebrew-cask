cask "claude-code@latest" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.251"
  sha256 arm:          "625869b01e0050f260b2980fac248fd9cef9e462612bded4ec9d3d49ff8969a5",
         intel:        "44221d72a3f35772faa85ad9a36a678084a516f720e64b45e26eb9015315500b",
         arm64_linux:  "65445bd4dd042079cc3fa43791b561370a05c8599e8ec47580e25a81050abbdd",
         x86_64_linux: "fd5f10ff0eb58daec04900466b143ea98aab50abf208a422bc008eaec13f61f7"

  url "https://downloads.claude.ai/claude-code-releases/#{version}/#{os}-#{arch}/claude",
      verified: "downloads.claude.ai/claude-code-releases/"
  name "Claude Code"
  desc "Terminal-based AI coding assistant"
  homepage "https://claude.com/product/claude-code"

  livecheck do
    url "https://downloads.claude.ai/claude-code-releases/latest"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  conflicts_with cask: "claude-code"

  binary "claude"

  zap trash: [
        "~/.cache/claude",
        "~/.claude.json*",
        "~/.config/claude",
        "~/.local/bin/claude",
        "~/.local/share/claude",
        "~/.local/state/claude",
        "~/Library/Caches/claude-cli-nodejs",
      ],
      rmdir: "~/.claude"
end
