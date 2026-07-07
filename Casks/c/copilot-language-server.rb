cask "copilot-language-server" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :big_sur
  end

  version "1.518.2"
  sha256 arm:          "da852185da64cec0b916a6ae309c0c8f7cb6dd7e08292963a91fe4994de25a5b",
         intel:        "06a2620d038ae3bcf5d161bd2ba3fed131fac5bbcee0750deaf4c26e33d32d6a",
         arm64_linux:  "834b608a1ea4a2d427418550bac9f6c5ad6ea48db7ab9f5309d64f58d1efee7a",
         x86_64_linux: "1ce628e4b7dbf2f0fe06612400ecb5c6e5644a1215fbd49e6af47cb53a123932"

  url "https://github.com/github/copilot-language-server-release/releases/download/#{version}/copilot-language-server-#{os}-#{arch}-#{version}.zip"
  name "GitHub Copilot Language Server"
  desc "Language Server Protocol server for GitHub Copilot"
  homepage "https://github.com/github/copilot-language-server-release"

  binary "copilot-language-server"

  zap trash: "~/.cache/pkg/*/rg",
      rmdir: "~/.cache/pkg"
end
