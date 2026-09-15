cask "kotlin-lsp" do
  arch arm: "-aarch64"
  os macos: "sit", linux: "tar.gz"

  version "263.4702.0"
  sha256 arm:          "95da3fc6d3b9092c7616345044a05edb85e5408dc648d081e4e433595c892bec",
         intel:        "62ab735947b1c855b505f64f5db8fbd7ff0b52a35ab1897938c6dbfc7b24c8a3",
         arm64_linux:  "ec7cb254a6662a07fff9f10e4365226afab6c40008f8a974c10ac5e785d6510f",
         x86_64_linux: "1e11d2e5fefbf9ea215ad8dd6be95f2222897cd086e8cb7a661a52084a590405"

  url "https://download-cdn.jetbrains.com/language-server/kotlin-server/#{version}/kotlin-server-#{version}#{arch}.#{os}"
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
