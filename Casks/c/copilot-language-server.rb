cask "copilot-language-server" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.527.5"
  sha256 arm:          "9d6a5bd9172f4c6ad916aec7fcbc463d5700ef1c2210f0bf6a6a981c44558d74",
         intel:        "ae0a2fc957dbbcb2963e29f84dce30f5aa223673da3eeec733144987702d2eb4",
         arm64_linux:  "e154a2aad5429e3b6ac8ccddac9036948d69913d91f5fc928a96aa414e4ab2b6",
         x86_64_linux: "091c8e667b5a96035a589952a774d6b1dc9ceca14bc61ef985869bc0db571660"

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
