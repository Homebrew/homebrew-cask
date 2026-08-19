cask "copilot-language-server" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.533.0"
  sha256 arm:          "e6c2336a3050b582a7f5a3c85fbc28f8ca64a7ccc8dca2605803915558d8f72d",
         intel:        "302c5c3c1b5948dd29234c710f6376d23b3ec59c47b390575f2a35abf2394de4",
         arm64_linux:  "6e6605f5da9b4a36defe8283baa71fb99942f592fd99935386bffa99e2146a74",
         x86_64_linux: "2b012bcee1d774be13fbce05e71cf9b9c0f0f78ab9f7d9cc8f1b14dd13842f16"

  on_macos do
    depends_on macos: :big_sur
  end

  url "https://github.com/github/copilot-language-server-release/releases/download/#{version}/copilot-language-server-#{os}-#{arch}-#{version}.zip"
  name "GitHub Copilot Language Server"
  desc "Language Server Protocol server for GitHub Copilot"
  homepage "https://github.com/github/copilot-language-server-release"

  binary "copilot-language-server"

  zap trash: "~/.cache/pkg/*/rg",
      rmdir: "~/.cache/pkg"
end
