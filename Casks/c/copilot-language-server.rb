cask "copilot-language-server" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.547.0"
  sha256 arm:          "6601dadbf686505b28002c99f2968211fd8fd1a9fe72dd884103b2ef4d9c4a7a",
         intel:        "fa092fa9127a6902c760befc0b40ad2361fcd6c5c6aa929a0f360c8452f2092c",
         arm64_linux:  "eff76d913cf2785c0b063dfe00c4cfb49dfefa1b8d5f9bfaa7c79ac9e2e82439",
         x86_64_linux: "ef09049df1028605c3496f7b2ad154664ef1376a231ea4d1345286d965cb8b61"

  url "https://github.com/github/copilot-language-server-release/releases/download/#{version}/copilot-language-server-#{os}-#{arch}-#{version}.zip"
  name "GitHub Copilot Language Server"
  desc "Language Server Protocol server for GitHub Copilot"
  homepage "https://github.com/github/copilot-language-server-release"

  binary "copilot-language-server"

  # No zap stanza required
end
