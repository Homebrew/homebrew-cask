cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.82"
  sha256 arm:          "c03bfc58c4402ec31d09ca11c379e1c17e95c3441f48009d721bf556fcc2c42e",
         intel:        "512cbd527e510664be8854ddfee3f3215f890a2f548b0477e9dd544b54abbd8c",
         arm64_linux:  "86c4c77a91b1ff5dd7313cbea9f861699a2cdceb4696f3864f3f0584e9684e0f",
         x86_64_linux: "37fa67686a9e4ed8d46dcd6a9c80ab524dea840ecaa0a3f7edf8d09f961b97a9"

  on_macos do
    depends_on macos: :ventura
  end

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
