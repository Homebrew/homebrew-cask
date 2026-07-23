cask "copilot-language-server" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :big_sur
  end

  version "1.526.0"
  sha256 arm:          "f984d893eee60dec629dac33c3b1b2b567a9e7874dd6d56b950b1f8506752f27",
         intel:        "d40a0399c3d4443ccbf051be0761c050a006a4b9f077f5af307e27d273a89695",
         arm64_linux:  "47e51d46d18f3622a316f61854c745d5c7dff5b267acef65e57cc8d4d22bed3a",
         x86_64_linux: "5b88212935c0fc04954d9c6feee108dba6cb82fa0dfe96ad09e4b27c5d113607"

  url "https://github.com/github/copilot-language-server-release/releases/download/#{version}/copilot-language-server-#{os}-#{arch}-#{version}.zip"
  name "GitHub Copilot Language Server"
  desc "Language Server Protocol server for GitHub Copilot"
  homepage "https://github.com/github/copilot-language-server-release"

  binary "copilot-language-server"

  zap trash: "~/.cache/pkg/*/rg",
      rmdir: "~/.cache/pkg"
end
