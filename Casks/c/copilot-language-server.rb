cask "copilot-language-server" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.532.2"
  sha256 arm:          "e90914c21832b8681289aac34d701ebfc2924cf6bbdab601061de1e9d4559195",
         intel:        "c9e4d42abdf6ab9bb4dc362c3278c56b8b5ae9fba7888d0a3134b20133c4990e",
         arm64_linux:  "9cc3f5402d5bdd320db877b9fbd2ffa61b00b8441a7b7c689250c4744866fe79",
         x86_64_linux: "4d9b8fda86e979598189d58e8ef63b400f425423713e0785841b17c23c335ab9"

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
