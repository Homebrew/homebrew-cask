cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.3"
  sha256 arm:          "4581ee264d072965f12ebff5fdc3540a43c53fa60bce509be1a7795373bb84f6",
         intel:        "29ae97fbfd7017252e2cf1318eb95cb17a2efabc58c8ad54ccf98e29c844ade0",
         arm64_linux:  "2eb1851b501fdacf0e7cf0672c9a96ec704b754c31bc55983a033eeaaceb4aff",
         x86_64_linux: "cf0e569594fda7d476c654e38a34bc95771349e7b6d7905d592bb4db24da7440"

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
