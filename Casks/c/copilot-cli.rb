cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :ventura
  end

  version "1.0.55"
  sha256 arm:          "fe4b1806145f3962112a7a69b7cd541e0f1df79f4294c13804c35fc731fb9555",
         intel:        "1dc5c7292a37b921661d566bc913cc5c1ac36d92790f69de64f94845f5df89d5",
         arm64_linux:  "36595a63382ee94e055f4511cd69bd5f3039fde6ebb5491614dbb6c815d84aae",
         x86_64_linux: "b1cd8dfaaa9632011f75ff2564e9dfc4b4328239dec7c98728f48ab8fd21aecf"

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
