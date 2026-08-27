cask "copilot-language-server" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.536.0"
  sha256 arm:          "d6aeec02e65641c7a5a4fba58697d20490e6994e7938ed75eff3c3983035dc1a",
         intel:        "84d49d07c3a09f41a3d7e2aa7021808eecdd4f8b92162c9d63dca7421338ba37",
         arm64_linux:  "4ca8277689d7c331496a0b38e19dc1215d700920ee01a62c1536f7262911af92",
         x86_64_linux: "5db0bd91712a9629a5c35d5bc2a55d0cc7a300cced3dcf1b66ebea09c104d485"

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
