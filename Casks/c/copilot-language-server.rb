cask "copilot-language-server" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :big_sur
  end

  version "1.509.2"
  sha256 arm:          "245643521b06debc82d052a5054f0abde163dfc7a371ea4390fa5eb7abd183a9",
         intel:        "3171df2ce622b14d4bbf77878c8a37b3ce0bc42a0e2d5ee5b7c859a63637b1c4",
         arm64_linux:  "2bd393b7125bd73c1f912cad714bf8c9790bbb05c40287196cda74384957b2a5",
         x86_64_linux: "e5047e55a94382792e8a7d3e325fe48233d14dae2ee5756231703e2d70934005"

  url "https://github.com/github/copilot-language-server-release/releases/download/#{version}/copilot-language-server-#{os}-#{arch}-#{version}.zip"
  name "GitHub Copilot Language Server"
  desc "Language Server Protocol server for GitHub Copilot"
  homepage "https://github.com/github/copilot-language-server-release"

  binary "copilot-language-server"

  zap trash: "~/.cache/pkg/*/rg",
      rmdir: "~/.cache/pkg"
end
