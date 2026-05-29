cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :ventura
  end

  version "1.0.56"
  sha256 arm:          "b4754e9876e29702c212eec3ccff4e5b423b00f1fec29acc6167588f674a787f",
         intel:        "5ec2129ed3dee19f862e23be8f0a4668e7c80871e6fb48f19a86fed1bdb20ad0",
         arm64_linux:  "b6810b2a081373f09925db6df0136c24d093fa860b43031cb105a4503db2a847",
         x86_64_linux: "930668cc0bcc96b3a22e81b15373544e4345c553a67351e240d637d70026b541"

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
