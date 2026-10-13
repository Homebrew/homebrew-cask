cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.97"
  sha256 arm:          "5c38e13684a8ef3ee59e07bb791168acca5a0289d71494168f00177aa1fdafbb",
         intel:        "78c49bb9670d0b31c90f062b147189aca5c6c8db5d1988bd62abe61053321e5d",
         arm64_linux:  "2cd044c6629f14b04e2bdc6791a71b43a8c3dc9cbcad529128ee6983764db349",
         x86_64_linux: "07f3f63cb361e911268e8a4b010e06eeced8d4f2d898d13a8180273e34aeff3f"

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
