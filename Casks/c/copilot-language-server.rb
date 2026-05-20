cask "copilot-language-server" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :big_sur
  end

  version "1.491.0"
  sha256 arm:          "26b12c79919289ef772841b64e96a027dc4e0ecd3a21f3436ae4998ac45a9cab",
         intel:        "713e9d5ef29f07eb0bafb89842136cb164c4a7965d2339acb541c92eab122361",
         arm64_linux:  "eea94f1e1bef6f1bf5f39a96c93e0a069eef06e55180fc07f221e04e28a2d280",
         x86_64_linux: "aa16a97d1d476346398534720c7d3f6fbbc344dcc8c3dede99bc4276670cbe11"

  url "https://github.com/github/copilot-language-server-release/releases/download/#{version}/copilot-language-server-#{os}-#{arch}-#{version}.zip"
  name "GitHub Copilot Language Server"
  desc "Language Server Protocol server for GitHub Copilot"
  homepage "https://github.com/github/copilot-language-server-release"

  binary "copilot-language-server"

  zap trash: "~/.cache/pkg/*/rg",
      rmdir: "~/.cache/pkg"
end
