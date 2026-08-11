cask "copilot-language-server" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.530.0"
  sha256 arm:          "2fa46e8ddfc3612ed50d80830ad0a12908aba89787e60f6eb71d9be26b28107b",
         intel:        "f2830abb87c2c8a1cdba6d50382a3f3eb017c250b05de5fb61bdc7c6cfad56ea",
         arm64_linux:  "edb4feb9ef468471bc57e8390aa8e0fa7efa12012815c51e031757a384000b25",
         x86_64_linux: "53168070a19ae8713b7825b511733ca2211ad931a0bd68b6b8d715566ddb39bf"

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
