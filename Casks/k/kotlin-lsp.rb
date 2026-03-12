cask "kotlin-lsp" do
  arch arm: "aarch64", intel: "x64"
  os macos: "mac", linux: "linux"

  version "262.1817.0"
  sha256 arm:          "46e34c7bd7cf6b6559656c684ad56e4a506ebccaa1f45d976f587bb84ef2ce4a",
         intel:        "dcae4b600483b7254417bcf1bf6cf3964f72d7194019e8c3126b75a2db2c115e",
         arm64_linux:  "72c976d60e58ebd84f96310c27e6e6b7b5c6811c03f4f9633e9d7bae3c965705",
         x86_64_linux: "da6fca67b2f4056ccb65849c885f3d2752f992116e8ad8132dc028acc4845547"

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
