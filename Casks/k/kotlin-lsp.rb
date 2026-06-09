cask "kotlin-lsp" do
  arch arm: "-aarch64"
  os macos: "sit", linux: "tar.gz"

  version "262.7569.0"
  sha256 arm:          "e3076b6500db8f1d40e087a80223ecbb3a14cf4fd2221e031c424a94c6094620",
         intel:        "0fdc0f0d345a759e6ac1522217679d8c175f8182eab51705bb267ca926ae24e5",
         arm64_linux:  "f974434597dcd41a0e7e9c3973b1ed999fc52150fb05e72582aacde3d1e79f7f",
         x86_64_linux: "333cb21215e2ce04817257bbd5c693cbbd4a99121ac100814601edc1f92d2570"

  url "https://download-cdn.jetbrains.com/kotlin-lsp/#{version}/kotlin-server-#{version}#{arch}.#{os}",
      verified: "download-cdn.jetbrains.com/kotlin-lsp/"
  name "Kotlin LSP"
  desc "Official Kotlin Language Server"
  homepage "https://github.com/Kotlin/kotlin-lsp"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  binary "kotlin-server-#{version}/kotlin-lsp.sh", target: "kotlin-lsp"

  # No zap stanza required
end
