cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :ventura
  end

  version "1.0.47"
  sha256 arm:          "db4bc187a99fb03846b3cf5f693894ebaa20a384bbb04a2ebd9adab6e56d90d2",
         intel:        "eed2c183cee9ca2fcf86f369d26330eb789f7f4a2e986acd232210fffc075706",
         arm64_linux:  "51bb747dd9ef41b75b0e4b24a42470fc4c317bb328b73d58f167ec0c95a7a0b8",
         x86_64_linux: "3188d30786b18ef02d907596db0b3b65c9cad2039b8a212bd045d44a3db32ecd"

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
