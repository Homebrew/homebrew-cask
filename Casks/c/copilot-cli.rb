cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.0.410"
  sha256 arm:          "81bb230bc848ce4d64049abd493c5e98a38ce1be36dcb35f77223afde22e85fe",
         intel:        "9a6df041980825fc7d4f2c1692a0b514ba71c9a13f18ef053f67afd74f4f938a",
         arm64_linux:  "77d346c275b4e7d14b683a2560cd3545c8a895b5da730737e7895b26bd8939da",
         x86_64_linux: "2523ba92c87d8d2cdd81f9f0f9954794bc169bc42a94969fbb87fc7e9f461b09"

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
