cask "copilot-language-server" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.469.0"
  sha256 arm:          "7c6df9b4f3188b3ea0c9fc40b5168935265046961b4e5bc6db40071d9ccd7eb3",
         intel:        "a4d884dc2cee271ee43c09f42dbc84b2a6ef747eebdf3fb8421cf0b1165c9572",
         arm64_linux:  "ddae52abd490920728e4520bb2c0a811969f964768fce899af3a983dcccdea7e",
         x86_64_linux: "d9b80f3d09f1ce9f1ee45fb903ea6fd7f2e726845d8ff69e53245f04a6d57abd"

  url "https://github.com/github/copilot-language-server-release/releases/download/#{version}/copilot-language-server-#{os}-#{arch}-#{version}.zip"
  name "GitHub Copilot Language Server"
  desc "Language Server Protocol server for GitHub Copilot"
  homepage "https://github.com/github/copilot-language-server-release"

  depends_on macos: ">= :big_sur"

  binary "copilot-language-server"

  zap trash: "~/.cache/pkg/*/rg",
      rmdir: "~/.cache/pkg"
end
