cask "kotlin-lsp" do
  arch arm: "-aarch64"
  os macos: "sit", linux: "tar.gz"

  version "262.8190.0"
  sha256 arm:          "e20183262784bb7e665ce1aea4855872a8b16f211ebb478d452773553732d9fb",
         intel:        "f3845ae9ee38c22ef5e436390d86a3d908f77073e9667fa643a5ae0957c19728",
         arm64_linux:  "c3edd59ef34a7faa4d04f3517afb7a932b19c3f9cf17d1a14e9da17b0b5440ad",
         x86_64_linux: "8b4c70e95065420e7867c99aaf9f18e0b4e76311ec453e4c1a39e3f6ae774cbf"

  url "https://download-cdn.jetbrains.com/language-server/kotlin-server/#{version}/kotlin-server-#{version}#{arch}.#{os}",
      verified: "download-cdn.jetbrains.com/language-server/kotlin-server/"
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
