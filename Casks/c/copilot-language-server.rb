cask "copilot-language-server" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.546.0"
  sha256 arm:          "31e878739e530f1ddde5527bcffb5f0b335aa52659c8fa040af654074d68c930",
         intel:        "a8f5a5e4fefcffd415be12ce83de602803879b3bbcea6c476945b382dbb4761f",
         arm64_linux:  "692aa9baa832f31bafa87b3075781642c3bb8cb578e8aa3142edcd088bc4f559",
         x86_64_linux: "6ebd4328d9bbc0a9167f7f0df11acdafca8514584c4cb7d827551d7242a5c674"

  url "https://github.com/github/copilot-language-server-release/releases/download/#{version}/copilot-language-server-#{os}-#{arch}-#{version}.zip"
  name "GitHub Copilot Language Server"
  desc "Language Server Protocol server for GitHub Copilot"
  homepage "https://github.com/github/copilot-language-server-release"

  binary "copilot-language-server"

  # No zap stanza required
end
