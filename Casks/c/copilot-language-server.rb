cask "copilot-language-server" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: ">= :big_sur"
  end

  version "1.485.0"
  sha256 arm:          "2ccdbab51e3c9f42c608dc2026e50337fbf5938f296a341cd20b2387ed166134",
         intel:        "abb8f137bee53b3ad181afd1ae6625690f8a562b8bf38654de3806aaa2d55bb1",
         arm64_linux:  "b6143cc365e8618a343bce99907a9af70dd7a3fc5d83633579549e8c5d4a87f0",
         x86_64_linux: "e60e5b83a3078b1722cc6efc2291fe491d9a6bb22df0c49f4278cd5c7660c18d"

  url "https://github.com/github/copilot-language-server-release/releases/download/#{version}/copilot-language-server-#{os}-#{arch}-#{version}.zip"
  name "GitHub Copilot Language Server"
  desc "Language Server Protocol server for GitHub Copilot"
  homepage "https://github.com/github/copilot-language-server-release"

  binary "copilot-language-server"

  zap trash: "~/.cache/pkg/*/rg",
      rmdir: "~/.cache/pkg"
end
