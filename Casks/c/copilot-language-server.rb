cask "copilot-language-server" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.472.0"
  sha256 arm:          "1139ff706a4eb982c012828cf1183a3bc7fb16a64e2606c79bdf671c766bffbf",
         intel:        "52f88d993775421663953d0f2cc34d9da2e5ca9dbf987edd03111cfa49efc14d",
         arm64_linux:  "ed7a186b531564530e5d3926207cc233946de3c67367f6d0da31fed9da9ee109",
         x86_64_linux: "cefbdf89f32885f6678c6ada6f0305be8875a8f1c5fbf8321ff9e8d34c3f0c98"

  url "https://github.com/github/copilot-language-server-release/releases/download/#{version}/copilot-language-server-#{os}-#{arch}-#{version}.zip"
  name "GitHub Copilot Language Server"
  desc "Language Server Protocol server for GitHub Copilot"
  homepage "https://github.com/github/copilot-language-server-release"

  depends_on macos: ">= :big_sur"

  binary "copilot-language-server"

  zap trash: "~/.cache/pkg/*/rg",
      rmdir: "~/.cache/pkg"
end
