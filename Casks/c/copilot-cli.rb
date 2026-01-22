cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.0.389"
  sha256 arm:          "caa383ed08a7d2e898e7c4eb538d9818abec31f15f2a79e2e38561bb5a415d27",
         intel:        "9dd7bbf6e6ef7579336f6283df716a61c42eb3c30c8d0d5b36c8f5734bff4a2a",
         arm64_linux:  "9d41a27fc943c690beaf82ffa63e5db5867a121f2e672c079e19710477049196",
         x86_64_linux: "2f6eed85847166c43a8c5ff75c8fbf1c2306d326af1e1e531725663c9b7b9076"

  url "https://github.com/github/copilot-cli/releases/download/v#{version}/copilot-#{os}-#{arch}.tar.gz"
  name "GitHub Copilot CLI"
  desc "Brings the power of Copilot coding agent directly to your terminal"
  homepage "https://docs.github.com/en/copilot/concepts/agents/about-copilot-cli"

  livecheck do
    url :url
    strategy :github_latest
  end

  conflicts_with cask: "copilot-cli@prerelease"
  depends_on macos: ">= :ventura"

  binary "copilot"

  zap trash: "~/.copilot"
end
