cask "copilot-language-server" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :big_sur
  end

  version "1.500.0"
  sha256 arm:          "13aaa1bf574c86d50e8ef0e1ecfe2c5387a1a71dffab2f412d089e250f96de1e",
         intel:        "29c1c189025915dac81520130e7c11da37e4a1a435af438a771cf0f9db4de2ee",
         arm64_linux:  "33dcf6046833ff5a79abbe74b6c6f9fc35fdabbc0a760594b200bdbbf9e7d2cd",
         x86_64_linux: "ffb1cb199f7a41211962869d4554f974878b7fd0048f2b8e9f14ce37ba5c578a"

  url "https://github.com/github/copilot-language-server-release/releases/download/#{version}/copilot-language-server-#{os}-#{arch}-#{version}.zip"
  name "GitHub Copilot Language Server"
  desc "Language Server Protocol server for GitHub Copilot"
  homepage "https://github.com/github/copilot-language-server-release"

  binary "copilot-language-server"

  zap trash: "~/.cache/pkg/*/rg",
      rmdir: "~/.cache/pkg"
end
