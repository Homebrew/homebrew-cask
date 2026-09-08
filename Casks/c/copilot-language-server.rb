cask "copilot-language-server" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.543.0"
  sha256 arm:          "94ba8f0da833fa6559750b2a1110fb24c1af25e43298d979b0e54ff6d841a3f2",
         intel:        "e79946ca602b3590e64246ce431b5503c696873a871461846f6703e553afdd95",
         arm64_linux:  "85b7b8d96bf0b73e5882604723bc808bcb37ca97772376b593d36885b057dbac",
         x86_64_linux: "81785f12e249cd32f3d4df17bea251920cae4d15dcd3933264ae472eb72b0f26"

  on_macos do
    depends_on macos: :big_sur
  end

  url "https://github.com/github/copilot-language-server-release/releases/download/#{version}/copilot-language-server-#{os}-#{arch}-#{version}.zip"
  name "GitHub Copilot Language Server"
  desc "Language Server Protocol server for GitHub Copilot"
  homepage "https://github.com/github/copilot-language-server-release"

  binary "copilot-language-server"

  # No zap stanza required
end
