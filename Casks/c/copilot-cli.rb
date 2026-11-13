cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.111"
  sha256 arm:          "398b49ebeafa67231151347794e07c4665a0ec904708645ca4992c917565a901",
         intel:        "43063da8b867de20c920e19521eed18401cd2e67d94c8b48ec9a3387e9175eef",
         arm64_linux:  "203ffacb01d40383d34427fac7577eb7c847d77cd88b45b2c7ab560e044d9613",
         x86_64_linux: "33ea4378ccc829bc18520648ad97c8fb1d9de4ba478ebff8eb2ad890aa0a95c8"

  on_macos do
    depends_on macos: :ventura
  end

  url "https://github.com/github/copilot-cli/releases/download/v#{version}/copilot-#{os}-#{arch}.tar.gz"
  name "GitHub Copilot CLI"
  desc "Brings the power of Copilot coding agent directly to your terminal"
  homepage "https://docs.github.com/en/copilot/concepts/agents/about-copilot-cli"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
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
