cask "copilot-language-server" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :big_sur
  end

  version "1.515.0"
  sha256 arm:          "5524d7a0eaf271f6f649ebc1d1f5bfa49899679b3cdd1528178711462da8ee9e",
         intel:        "e08c9d51ab578a2bbe03902a8b62636acf21041d558940afd3e5e5a6327f0afd",
         arm64_linux:  "0a439d2ca3b69a69c1bf6a19ca0bed0b1bbcc7aeb9aa2951f011959f563b7b96",
         x86_64_linux: "e07f9022f2a4334c8f5356f9eb4a398592d60b1c22e91fb04075d4edc6034fe3"

  url "https://github.com/github/copilot-language-server-release/releases/download/#{version}/copilot-language-server-#{os}-#{arch}-#{version}.zip"
  name "GitHub Copilot Language Server"
  desc "Language Server Protocol server for GitHub Copilot"
  homepage "https://github.com/github/copilot-language-server-release"

  binary "copilot-language-server"

  zap trash: "~/.cache/pkg/*/rg",
      rmdir: "~/.cache/pkg"
end
