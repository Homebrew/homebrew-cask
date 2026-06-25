cask "copilot-language-server" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :big_sur
  end

  version "1.511.0"
  sha256 arm:          "e25999495eff6ceb5cb712cb2e005cd21cd8366b9b632c01656864d59846ded8",
         intel:        "ee44b5ec0b595cd9dcd528835470968467acaee186e42260842377c9319bb7e4",
         arm64_linux:  "b4053f224b33da8060be44a7b7bca3c770805cb30b6d67a965cb193ff0f19fb4",
         x86_64_linux: "2b567742f671a7a08706a43ab231470516b9e293f261a59ad4ed6d5d4733825e"

  url "https://github.com/github/copilot-language-server-release/releases/download/#{version}/copilot-language-server-#{os}-#{arch}-#{version}.zip"
  name "GitHub Copilot Language Server"
  desc "Language Server Protocol server for GitHub Copilot"
  homepage "https://github.com/github/copilot-language-server-release"

  binary "copilot-language-server"

  zap trash: "~/.cache/pkg/*/rg",
      rmdir: "~/.cache/pkg"
end
