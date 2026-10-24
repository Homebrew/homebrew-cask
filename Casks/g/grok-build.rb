cask "grok-build" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"

  version "1.0.70"
  sha256 arm:          "5c8a688251bf61e35370b828b6a353b0a20fcc3f64000de8a91d426039f29cec",
         intel:        "d9ecd462f1f3c3b40a7a131944987ee7ed1c38069b7009cc4107398ab767f484",
         arm64_linux:  "3aa36883574b263088e5addffe241f55430e8daaee1a0c4934b02180007a9761",
         x86_64_linux: "22d281c5964c5444147328096ba2a221f3f0874c6858e27c825656a80f6e58e9"

  url "https://x.ai/cli/grok-#{version}-#{os}-#{arch}"
  name "Grok Build"
  desc "Extensible coding agent for the terminal"
  homepage "https://x.ai/build", browsed: "2026-08-13"

  livecheck do
    url "https://x.ai/cli/stable"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  binary "grok-#{version}-#{os}-#{arch}", target: "grok"
  binary "grok-#{version}-#{os}-#{arch}", target: "agent"
  generate_completions_from_executable "grok-#{version}-#{os}-#{arch}", "completions", base_name: "grok"

  zap rmdir: "~/.grok"
end
