cask "copilot-language-server" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :big_sur
  end

  version "1.504.0"
  sha256 arm:          "4178a0219985e6b8ee887f3f7e68646b705a61ced7ff33ba4f1fe31d8f6f0ed5",
         intel:        "808d0831aa8a9f3dd529ce006784285bef57cac433af195d69d3b8d4cbd0561a",
         arm64_linux:  "7653d9b8a6b4ec2a151e7c11b8dab0e6e14c44628809e464e877809370d1645c",
         x86_64_linux: "db6d05d15ed7911419dc8a51223f7770f43dc05e82630888aa8f6456ae16b701"

  url "https://github.com/github/copilot-language-server-release/releases/download/#{version}/copilot-language-server-#{os}-#{arch}-#{version}.zip"
  name "GitHub Copilot Language Server"
  desc "Language Server Protocol server for GitHub Copilot"
  homepage "https://github.com/github/copilot-language-server-release"

  binary "copilot-language-server"

  zap trash: "~/.cache/pkg/*/rg",
      rmdir: "~/.cache/pkg"
end
