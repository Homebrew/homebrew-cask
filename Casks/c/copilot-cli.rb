cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :ventura
  end

  version "1.0.70"
  sha256 arm:          "5f9791561eefe99b3bed25a02eef37dc434327053af05e6150dad7d6aed05a35",
         intel:        "ce2d968b68c1a28690544ff638e762a804943992b5496fb7ec2358fe7f1eee87",
         arm64_linux:  "1cb358a1a8ac8d0f680b54c6eac990c376043314409a06a5aa4fed0e0a7d3362",
         x86_64_linux: "4edee3cd005254960789329181968b209b17cab47f43ee13c9e071b1f7e33095"

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
