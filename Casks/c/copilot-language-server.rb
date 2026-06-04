cask "copilot-language-server" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :big_sur
  end

  version "1.501.0"
  sha256 arm:          "e4648593963b3a4ba864152e0f06eada6e37ed23fd96623f68af66271f2e74ed",
         intel:        "ec043bf787958cdc2d29458cb9dcbee3bffb24a8d20691db495c768b769dc99a",
         arm64_linux:  "5876367208c929a037149026cd28aa1c2aebcdf64844d521f2c6e1536a7136c2",
         x86_64_linux: "90494a5d7482160627a58ad4258a618892cb532e7064dc6707f6265b3e79f9e8"

  url "https://github.com/github/copilot-language-server-release/releases/download/#{version}/copilot-language-server-#{os}-#{arch}-#{version}.zip"
  name "GitHub Copilot Language Server"
  desc "Language Server Protocol server for GitHub Copilot"
  homepage "https://github.com/github/copilot-language-server-release"

  binary "copilot-language-server"

  zap trash: "~/.cache/pkg/*/rg",
      rmdir: "~/.cache/pkg"
end
