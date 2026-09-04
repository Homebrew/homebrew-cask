cask "copilot-language-server" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.540.0"
  sha256 arm:          "25e4b6373a271503a3113cb461586e45722c87be70b93f3b0b282cf629c04975",
         intel:        "c1ec025e190f9e475f1b6717ed15283e055b01deba1fee1d75fa8e926ced68c4",
         arm64_linux:  "01fbf2bd056c4cf8d1d3051f7e7d64945e1dca7f8fb7271f9a04d3fd46e6f47f",
         x86_64_linux: "2fa2b32e62ba09ccdbaa66fbdc8b7fe7d6a1ba1cbb865f0e7e9677ce6c3856f7"

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
