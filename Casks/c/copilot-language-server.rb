cask "copilot-language-server" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :big_sur
  end

  version "1.523.0"
  sha256 arm:          "32365bfc9debba4c07ebcc9cd314d32f1a9a0f394f1d48e7ff6ca031562b6b6d",
         intel:        "1ee6cc8f4d1784b8684b808938735943726ec5af487588a0b9285eb9114217c3",
         arm64_linux:  "c76a26e4781c84e06dc4fc0d635f656f39e5fd08a403fe2a5c55b3d582c3b14f",
         x86_64_linux: "6390d066408f48e8b6c6e0797c131e5cea26905a7e6535750c2d1c2fb6960127"

  url "https://github.com/github/copilot-language-server-release/releases/download/#{version}/copilot-language-server-#{os}-#{arch}-#{version}.zip"
  name "GitHub Copilot Language Server"
  desc "Language Server Protocol server for GitHub Copilot"
  homepage "https://github.com/github/copilot-language-server-release"

  binary "copilot-language-server"

  zap trash: "~/.cache/pkg/*/rg",
      rmdir: "~/.cache/pkg"
end
