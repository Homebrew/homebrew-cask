cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.76"
  sha256 arm:          "291391b420c2c0d24b995127855ccbc8b68b274640d6e88fa888536c40eb4362",
         intel:        "477d61a36020cc9d0f2125d054828eb9a64c0f8dabdac4d22a3c8ffb4a5e95ad",
         arm64_linux:  "f29d8bfe7671dcdcaed05f8eff075110fdc42109e245835a1c6be2948460e441",
         x86_64_linux: "56a98decbd01732951b0f8caa9ab32bc1293c27897292c216ea593701c8b2988"

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
