cask "claude-code@latest" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.288"
  sha256 arm:          "bbe93063f7a0879a1021b2891e5c9354e5b3b98433e32efe6750f7710afed750",
         intel:        "946acab03a55b60e2016e30964c48b96ef6673cb5da684383f4835da410eede0",
         arm64_linux:  "359ab6a058fcde9741dff54979a212fd134cdf8e8cfc2f8de02bc350b9e2b9d5",
         x86_64_linux: "0298068b686e7fdbaf9402a7a587bb7f49c0b0e084de09f69145a0719207640c"

  url "https://downloads.claude.ai/claude-code-releases/#{version}/#{os}-#{arch}/claude"
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
