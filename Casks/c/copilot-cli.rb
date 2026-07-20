cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :ventura
  end

  version "1.0.71"
  sha256 arm:          "0ef20b0308b6e23e9d44c143bf075ee7d29acbbbc3847bacb8e29623f2d24389",
         intel:        "27cc84056a3d7b5ae46909dbffff635ef03d43d6636a1d90f8153706d61b70e2",
         arm64_linux:  "74cc7cdaaed398f26b7d72c7d41ba2bff41a903525aeac778361d6dbd8a0c60d",
         x86_64_linux: "779e9b3e52399d8fdf5bcd61779e3f1d606796ba478b614ad41fb80d522910bb"

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
