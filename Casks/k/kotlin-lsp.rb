cask "kotlin-lsp" do
  arch arm: "-aarch64"
  os macos: "sit", linux: "tar.gz"

  version "263.6379.0"
  sha256 arm:          "ebef2e13cd4adc4ec9e04084b848000a3ec7a9d2917c64f269574ce2efe9ecad",
         intel:        "e69e0c9d27b915b2db9ee692ec08d097df1a394d9f21190457ef199f2905f77e",
         arm64_linux:  "50999901ef8bcfa1e58561b6a8d782a72dea5620fcf92a64130807f8924a56fc",
         x86_64_linux: "ab8ca4455dc2fc5fe1a24db2bccc46c104254d2c465155c4251ee65df8f3f7cc"

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
