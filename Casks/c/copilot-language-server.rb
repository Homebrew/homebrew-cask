cask "copilot-language-server" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :big_sur
  end

  version "1.516.0"
  sha256 arm:          "89d96206f990ab406030af7c9ee574b865fe33136b6868546674e77081b47382",
         intel:        "88d464031d3a4f3ba96026db3e30f508228c2e29c7e69dd9872862cfcc9c2ba2",
         arm64_linux:  "3386232d6a18c7523d97176e62b96ee0ca9bf905853a29d5ec67afa4982e0836",
         x86_64_linux: "2da0c422fa78d8265c97329251f3f7f8984c7b81cf368d2123653d7c9ae6e2bb"

  url "https://github.com/github/copilot-language-server-release/releases/download/#{version}/copilot-language-server-#{os}-#{arch}-#{version}.zip"
  name "GitHub Copilot Language Server"
  desc "Language Server Protocol server for GitHub Copilot"
  homepage "https://github.com/github/copilot-language-server-release"

  binary "copilot-language-server"

  zap trash: "~/.cache/pkg/*/rg",
      rmdir: "~/.cache/pkg"
end
