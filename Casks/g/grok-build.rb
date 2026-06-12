cask "grok-build" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"

  version "0.2.51"
  sha256 arm:          "1caab58eb25e1ad76b309154acd2643a7099247555e103fe3ac63f4388099a82",
         intel:        "0302b17cf59a762977210a52dc2a25c10601ebd343e9b08c10559b423ccf7d0b",
         arm64_linux:  "1ad7974d7386ac37c5fcfcf8eeedf61403b6134d4f561b40c59334222f6c578b",
         x86_64_linux: "52916267aa2f7868c23a6dd7847dfe066e39a52b8ffd216380186397ea7d0075"

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
