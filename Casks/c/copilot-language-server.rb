cask "copilot-language-server" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.527.1"
  sha256 arm:          "54991334aca3cdd8fa966943cbc14d159b16372a7e604b469a1d89531058724b",
         intel:        "cfc2bb23728a768c743a9647a1ba5bb583ab4abf533d72e70588f4d37e01c68a",
         arm64_linux:  "00c45c0a28098f0a01a9393e10698c464d1db42ebafc20b78554e464b6fb5723",
         x86_64_linux: "f3803443475fe317a5e9a2026f44cbf4a3d0ab489e394014971addf80b8e140f"

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
