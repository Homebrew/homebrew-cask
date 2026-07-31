cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.77"
  sha256 arm:          "3ab9366cd96c06e4d90c6e77d7a9ffa06e2502aa1196ba20c555306c0d7a9592",
         intel:        "7c83fc16017a67b7b354dfca19a93342735d2ec710fb60cc174407958ab6702c",
         arm64_linux:  "5bcf01b30bd74ce415cc93acb404885e0bc396cde037ca68efe2b8ec84f91e5a",
         x86_64_linux: "c6414f99c5b29b049a3b0929ba824f0ff0ae88b85eb52559be45631b96b00f4c"

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
