cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.113"
  sha256 arm:          "b62ce1b8bae60a8f2f3012166b996848580a0b147a8ccc05e00cadff2faccb40",
         intel:        "e591c41d7c4a75264bed8443b99127d5105367460914edc29161d3ad074fba8b",
         arm64_linux:  "35e721d7cb32928c9249d3a1784c75dca957d8307717ede1bae9e82b608c1784",
         x86_64_linux: "c44841916f59dcd5946b952bc17b688468c11227292d2c653101bbc58ed97a9e"

  on_macos do
    depends_on macos: :ventura
  end

  url "https://github.com/github/copilot-cli/releases/download/v#{version}/copilot-#{os}-#{arch}.tar.gz"
  name "GitHub Copilot CLI"
  desc "Brings the power of Copilot coding agent directly to your terminal"
  homepage "https://docs.github.com/en/copilot/concepts/agents/about-copilot-cli"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  auto_updates true
  conflicts_with cask: "copilot-cli@prerelease"

  binary "copilot"
  generate_completions_from_executable "copilot", "completion"

  zap trash: [
    "~/.copilot",
    "~/Library/Caches/copilot",
  ]
end
