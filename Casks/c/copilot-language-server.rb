cask "copilot-language-server" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.574.0"
  sha256 arm:          "a001352046e8e37cf0ccdb769f4d5a48bd078c80a1de26afc0a8bc814314e40f",
         intel:        "cc70c3590a1cf7366dee46fca155e114e8724d44fa09c75ffa4b7cdde5040da9",
         arm64_linux:  "11a381cc7085a425fe78208e3c6a17188cafccf28d257cd436a7d09c7e077c45",
         x86_64_linux: "90c71bab2b0b53594a81d61f9b3fc15ef28f7a4c035ca9c425e6596e1c6d7dc9"

  url "https://github.com/github/copilot-language-server-release/releases/download/#{version}/copilot-language-server-#{os}-#{arch}-#{version}.zip"
  name "GitHub Copilot Language Server"
  desc "Language Server Protocol server for GitHub Copilot"
  homepage "https://github.com/github/copilot-language-server-release"

  binary "copilot-language-server"

  zap :not_required
end
