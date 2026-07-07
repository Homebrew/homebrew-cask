cask "copilot-language-server" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :big_sur
  end

  version "1.519.0"
  sha256 arm:          "ec8d17c8cd0971ec6695a147d7c80c78dfb5da5ae58a66f6c264de8b2fa511a8",
         intel:        "f89afe33301cc1973f9f0809a3f3c1963d19c812f2a45e4f4abaa78c67096a74",
         arm64_linux:  "a5eb1632ce2103cf24354cd338e4237c5b0a17a94ff29f4fff04e9199f76a094",
         x86_64_linux: "2f73ef9b30909f1ce79cfd18e1c230186918161eb35c31a162f1b03d4b150b3a"

  url "https://github.com/github/copilot-language-server-release/releases/download/#{version}/copilot-language-server-#{os}-#{arch}-#{version}.zip"
  name "GitHub Copilot Language Server"
  desc "Language Server Protocol server for GitHub Copilot"
  homepage "https://github.com/github/copilot-language-server-release"

  binary "copilot-language-server"

  zap trash: "~/.cache/pkg/*/rg",
      rmdir: "~/.cache/pkg"
end
