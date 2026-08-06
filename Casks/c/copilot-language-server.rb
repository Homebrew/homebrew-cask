cask "copilot-language-server" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.527.4"
  sha256 arm:          "aaac4a6afa78e16cbb957347fe23ce4097fdbe3f1936788883c85105de53d3f0",
         intel:        "d8872b772c033e4f01eda7fbfb57a1ada7e6af68051b2f821edc199ddcba90fe",
         arm64_linux:  "4c3ee4b0b051f6e842306aced3c5a45877e48d83ec5721a67319fc6648cc80d2",
         x86_64_linux: "cbe3a1c6fd9cace5ac1954da3bda1b7eb66b4c6073ebd22393fdf7a66adc72fd"

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
