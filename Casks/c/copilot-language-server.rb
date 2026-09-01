cask "copilot-language-server" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.539.0"
  sha256 arm:          "8be161fef7b8bc8b68309959caaf80af40106050c6df69a082c47e81b249d29e",
         intel:        "7314cb9dc81b1a19702e28cf798210ebdfabbaeb40c2119a19f08f84a8862e8b",
         arm64_linux:  "610aec6908abb1bbe72b43604f31c501489000f3018576e4f7c1262e9711b388",
         x86_64_linux: "a5f8a02bd262362017c0aaf4faacb32e0f10dbd7e58469ac1e4211fa24a903b4"

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
