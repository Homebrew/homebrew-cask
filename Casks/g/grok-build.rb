cask "grok-build" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"

  version "0.2.91"
  sha256 arm:          "bf31bf85387b0f48eee50e3ccf738c19514ccfe85c857906dc3b934f09e99793",
         intel:        "912afc41b1256fb75958830031712f0a364be7bb2831aba33db90a29e8cb7093",
         arm64_linux:  "7b95c33e5deca65ee39a584472d7cdb8c65fa92285f882390d1e933857227683",
         x86_64_linux: "e2b02e3aa5e2f9e3e606c83d7d96ef86c857832cb5457a01825c760885b64a91"

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
