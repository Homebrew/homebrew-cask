cask "copilot-language-server" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.537.2"
  sha256 arm:          "5097b317098e7bf471f07ab8bf55608b470cc3575cda6cedbc74d471f5e9492f",
         intel:        "13e70b8dccb8575d9dce83135bc3b20e118b02e18eb6ead9b392c49ca25038e9",
         arm64_linux:  "986ea92d5770120d51bebf29a0c4dc420293ac83fc5a56ca9bd74de7ddcb9b01",
         x86_64_linux: "6fc702f5c566fe4896af440978e399e344980c6527958c802c9f0763225b9098"

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
