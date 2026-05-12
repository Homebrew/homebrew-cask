cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :ventura
  end

  version "1.0.44"
  sha256 arm:          "d5a9b8cc2de1d1d6e08ae658cc352069c6ee70f26d11b3d7763b46e44098331a",
         intel:        "cf993c10a4b33caa5260d6b0978eeb6a73e15b82a2042d3bf2fc75b26899f632",
         arm64_linux:  "2eaf45bb838634ca413eb3979b83128966ab02b1bc5cd6a61f459816a7d55e9b",
         x86_64_linux: "ff074c6b98987511a22ee908b86cd499721769afa59b1688efd339807092d03c"

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
