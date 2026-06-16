cask "copilot-language-server" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :big_sur
  end

  version "1.507.0"
  sha256 arm:          "3e734f1e8b41e25427765e50fb8f10bf66b427f0df9cf3c8ddc860965f6c9155",
         intel:        "5aa3de55a67e74e31918d08fee1f574ee7c7215b4e170341809d9b3678518988",
         arm64_linux:  "b896f1d919105a39d8d64997cddff3519d04234abeaac3d7c3be873b96bc7a12",
         x86_64_linux: "a3561dc9dedabe44c88639d575c3e3715b8d14b286a4caad9950c598981a1d1b"

  url "https://github.com/github/copilot-language-server-release/releases/download/#{version}/copilot-language-server-#{os}-#{arch}-#{version}.zip"
  name "GitHub Copilot Language Server"
  desc "Language Server Protocol server for GitHub Copilot"
  homepage "https://github.com/github/copilot-language-server-release"

  binary "copilot-language-server"

  zap trash: "~/.cache/pkg/*/rg",
      rmdir: "~/.cache/pkg"
end
