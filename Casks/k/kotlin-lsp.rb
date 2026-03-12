cask "kotlin-lsp" do
  arch arm: "aarch64", intel: "x64"
  os macos: "mac", linux: "linux"

  version "262.1668.0"
  sha256 arm:          "75cdce1274ad9334ec2ac5355f3be8656712fa4f7c5ad9875a9c7e3652a5c9de",
         intel:        "df5358441b048cf93e26cfa4a6c9a2042556b87f1a2917642b613235801298f0",
         arm64_linux:  "bb1b6ac3bec2a3c60fbc03d358c625e6be65d59fe7a77da5a843449df67b6df0",
         x86_64_linux: "07642b9a09046ba474f1be66b490142ce1dc6a29e02ca3789526263efe85df2f"

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
