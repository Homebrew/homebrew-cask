cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.7"
  sha256 arm:          "f3578d241d55331604e092a5719faa18466b2743f4fd58efd5006f7092d87450",
         intel:        "cc647bfd8c05cfa50f8e299550fed4f5235c65cbbef3c6032ed1f920869933f1",
         arm64_linux:  "9edbf4fdc3066597cdb50c89d43d0e83f67d8860e9fe515ca11d61810fa3393c",
         x86_64_linux: "e83757442dc4cc424dbeae174e30cb8f76e54aa0c105876e72b32e29a0fa37ad"

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
  depends_on macos: ">= :ventura"

  binary "copilot"

  zap trash: "~/.copilot"
end
