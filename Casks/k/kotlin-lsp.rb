cask "kotlin-lsp" do
  arch arm: "aarch64", intel: "x64"
  os macos: "mac", linux: "linux"

  version "261.13587.0"
  sha256 arm:          "d4ea28b22b29cf906fe16d23698a8468f11646a6a66dcb15584f306aaefbee6c",
         intel:        "a3972f27229eba2c226060e54baea1c958c82c326dfc971bf53f72a74d0564a3",
         arm64_linux:  "d1dceb000fe06c5e2c30b95e7f4ab01d05101bd03ed448167feeb544a9f1d651",
         x86_64_linux: "dc0ed2e70cb0d61fdabb26aefce8299b7a75c0dcfffb9413715e92caec6e83ec"

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
