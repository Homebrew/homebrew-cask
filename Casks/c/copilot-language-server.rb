cask "copilot-language-server" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :big_sur
  end

  version "1.486.0"
  sha256 arm:          "cee63e4053e91b5cf2db3e32df8de27b28ffdf6af9a99ce01a4808c91eb19d92",
         intel:        "d73820b159e3a9a60d15a7a01fd8c0356219c3faa50800ca682f09ed6294aba9",
         arm64_linux:  "58618d008af0c1bd3a9117f2ba3be0a4dcc5887f11ac95df6e5d1a93c572c191",
         x86_64_linux: "f93f3d1bd275cf0b712ace4453049402fd08af33959824ead3eb0ba2c6cecd7d"

  url "https://github.com/github/copilot-language-server-release/releases/download/#{version}/copilot-language-server-#{os}-#{arch}-#{version}.zip"
  name "GitHub Copilot Language Server"
  desc "Language Server Protocol server for GitHub Copilot"
  homepage "https://github.com/github/copilot-language-server-release"

  binary "copilot-language-server"

  zap trash: "~/.cache/pkg/*/rg",
      rmdir: "~/.cache/pkg"
end
