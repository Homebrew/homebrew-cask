cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.26"
  sha256 arm:          "637ffb254537839b2cb17c49ff5f8446927d5ce91897480f33eeafcf040eefd5",
         intel:        "977d7a2957ac309b597e58258357d8818be60403372ef68ad81f58c6e227a4b8",
         arm64_linux:  "6dcfcca122fc46f0912c4d509308bd39d66948861cecb5bab63194fa4a9bea72",
         x86_64_linux: "8bbedf9f40ce5bf5630b35d8e2641b9ad003436a45b23bb8ccf33d899366986f"

  url "https://github.com/github/copilot-cli/releases/download/v#{version}/copilot-#{os}-#{arch}.tar.gz"
  name "GitHub Copilot CLI"
  desc "Brings the power of Copilot coding agent directly to your terminal"
  homepage "https://docs.github.com/en/copilot/concepts/agents/about-copilot-cli"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  conflicts_with cask: "copilot-cli@prerelease"
  depends_on macos: ">= :ventura"

  binary "copilot"

  zap trash: "~/.copilot"
end
