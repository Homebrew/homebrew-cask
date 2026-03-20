cask "kotlin-lsp" do
  arch arm: "aarch64", intel: "x64"
  os macos: "mac", linux: "linux"

  version "262.2310.0"
  sha256 arm:          "11560eb4ecd766204363848cc5ee84b51c0fd03fbfd4bbedaba0f00af74309c7",
         intel:        "a4ccf591664cfef6a12f21a690d23bad26b92de62ed34674491b915f25f95bf5",
         arm64_linux:  "1f8c814dfa9d64a9fba32b83a6fa0279cbc48e7240ef0ce922c7db2f39f0d35c",
         x86_64_linux: "c004242158f4b5e1d917ddd848e6f6a279484fa58a3e2bce8846b807d1ad16b1"

  url "https://download-cdn.jetbrains.com/kotlin-lsp/#{version}/kotlin-lsp-#{version}-#{os}-#{arch}.zip",
      verified: "download-cdn.jetbrains.com/kotlin-lsp/"
  name "Kotlin LSP"
  desc "Official Kotlin Language Server"
  homepage "https://github.com/Kotlin/kotlin-lsp"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  binary "kotlin-lsp.sh", target: "kotlin-lsp"

  # No zap stanza required
end
