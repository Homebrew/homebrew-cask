cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.116"
  sha256 arm:          "acaa227712860978d8a73a7a64395f64dba2c77fcab2304fa21a995f12355584",
         intel:        "86ed34686e86e6685e21e7fc318c0aaaea30a6a214926925a4665b7ed7ec7682",
         arm64_linux:  "ba3207afd858a93b63c5ccd83c53f43fdb20fc00fd43260a532fb14b5f8d0776",
         x86_64_linux: "ffea833980a9767a18aff7fd8459085a044266c26ca6a9edafe59cdcff718c79"

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
