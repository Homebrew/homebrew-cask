cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :ventura
  end

  version "1.0.69"
  sha256 arm:          "e4c2a55c5548f378df741e6eb19735b751efa13fa9411ee5a329f811d52e97e1",
         intel:        "3069a032ac2682b5af1595e733dd2ea7d430d1872cf1db7a5340b8c96b892370",
         arm64_linux:  "aedbc54cb750dba38329a6fa06da91129c50579e9fa05225f932ba41ad7c7260",
         x86_64_linux: "fe6de1bcaf986ce832e23a35ff48b3f2344bdcefcd0e46c1e69e1498a2571348"

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

  binary "copilot"

  generate_completions_from_executable "copilot", "completion"

  zap trash: "~/.copilot"
end
