cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.81"
  sha256 arm:          "568b0d6fe88d573c171ab95887d33276802dda2c5ca3cee7d0fe438df2343be4",
         intel:        "269b2b42a4c3059c260063ca4ded9920132f5b9ad270a531ab80e569917c46a5",
         arm64_linux:  "f0e621e6793b14e04c0f651cd46d818a5bf0bf54d74c9566c9424744b41a279c",
         x86_64_linux: "3082c4a27aa683def52e48397c02606dc7f8267dcef1c93949f3f58de4a5cde3"

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
