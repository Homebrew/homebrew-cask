cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.86"
  sha256 arm:          "a242a106b9b47f23cf02f354113a86c5efc6f69a4e175265f7c9bc509daa7789",
         intel:        "f1f2cfd1f2b54d492365b4ceefb473cc84530b970ac8c9e49e2f539133016cd1",
         arm64_linux:  "3c0e1f939931ddf19cf4d6a2d77922afb937dbfa8d373fe623b8befab5bd7fdb",
         x86_64_linux: "ea4a519d7b2ff54e9c7d10ae9921cf4ab3f5041489ec340852f47f4f63fc535b"

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
