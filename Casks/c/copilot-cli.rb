cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :ventura
  end

  version "1.0.68"
  sha256 arm:          "5c792cb638f32b43e791ac567c11583eb0b01fd7dee6d3c08ca230504d32d6f0",
         intel:        "c6ed295c6e923fdd230462f6cc75fd9ee602f55e7b9d4c166a0596018c0a7235",
         arm64_linux:  "df0c3ff9c5da91d2811a7bd9d86aef9fc04edab729c7103eab6b8519173ed301",
         x86_64_linux: "b9531ebf40c2e4c084e5204c9875924a036647bb7f014c4651cf1da2a2053f88"

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
