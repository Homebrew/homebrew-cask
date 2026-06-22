cask "copilot-language-server" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :big_sur
  end

  version "1.509.0"
  sha256 arm:          "16799c3f0735471f526eac9dfb26e02bed78e4f1b1ea9b2a17843e2c9a769c2c",
         intel:        "b94776df8b842d8d8a9d77a0d750a0336f33ffe0b1e9512867f0233c347aaec1",
         arm64_linux:  "39e366dd488fb9f907ae7ac3d899b1a8dfc883c5a3e6bef0cbab2c484fc6b43a",
         x86_64_linux: "0407e48d969455c54c0e92f6a7c18aa2c167f21b4729f2e08e29050299e2574e"

  url "https://github.com/github/copilot-language-server-release/releases/download/#{version}/copilot-language-server-#{os}-#{arch}-#{version}.zip"
  name "GitHub Copilot Language Server"
  desc "Language Server Protocol server for GitHub Copilot"
  homepage "https://github.com/github/copilot-language-server-release"

  binary "copilot-language-server"

  zap trash: "~/.cache/pkg/*/rg",
      rmdir: "~/.cache/pkg"
end
