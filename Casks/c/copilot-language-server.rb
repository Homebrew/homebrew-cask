cask "copilot-language-server" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.549.0"
  sha256 arm:          "88cd39baa71645cac91b1b325ef4d56d762cc1f02f8b3f28abd355029f3eec55",
         intel:        "26240154632e6ee3275719996bb65021a4626bb8bffec0d7ac62ef25d6c53557",
         arm64_linux:  "0c8a47f84c2d651974ccf165b9aae4a947242a0ba75910e3b2a71cc54ef454ea",
         x86_64_linux: "38be80beffee78dfb0f3682a77709baa549d2b380a5df7c9f5a003b9d586b3fe"

  url "https://github.com/github/copilot-language-server-release/releases/download/#{version}/copilot-language-server-#{os}-#{arch}-#{version}.zip"
  name "GitHub Copilot Language Server"
  desc "Language Server Protocol server for GitHub Copilot"
  homepage "https://github.com/github/copilot-language-server-release"

  binary "copilot-language-server"

  # No zap stanza required
end
