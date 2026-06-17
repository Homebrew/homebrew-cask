cask "copilot-language-server" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :big_sur
  end

  version "1.508.0"
  sha256 arm:          "08345aa86b8d7a9e3c146163adbd902226b933f8eb0ef262b2d44c7599c7950b",
         intel:        "d65fe7892b40dae1347c6d9e848340a7a534dfaf8327fe3795119b2148c25a96",
         arm64_linux:  "d8ef180c6c8ce48745c7d37dc96c21f0de657e6f776ce0fcd6ed6e4c862fa3ac",
         x86_64_linux: "082dd6de92d386276f2c14ab4c98233c8588834c098220bd27d7b3846887d206"

  url "https://github.com/github/copilot-language-server-release/releases/download/#{version}/copilot-language-server-#{os}-#{arch}-#{version}.zip"
  name "GitHub Copilot Language Server"
  desc "Language Server Protocol server for GitHub Copilot"
  homepage "https://github.com/github/copilot-language-server-release"

  binary "copilot-language-server"

  zap trash: "~/.cache/pkg/*/rg",
      rmdir: "~/.cache/pkg"
end
