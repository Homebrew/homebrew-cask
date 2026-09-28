cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.89"
  sha256 arm:          "7dc3854cf21190f033d449f77c140bbb78d52018359c5eb05aa781b3c2a1301d",
         intel:        "f48484b330792861548ab5a47fdd9b485c03a613c563922e29991d700e6de2f4",
         arm64_linux:  "8406c9e0bbfd0cb868b2a3e9488d500b76401685afdb5d71149233df1d36921b",
         x86_64_linux: "c5c234ccba6fae2b7a9eae462caf628e86c21b5e6240ec2e885727fc148a1dcc"

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

  zap trash: [
    "~/.copilot",
    "~/Library/Caches/copilot",
  ]
end
