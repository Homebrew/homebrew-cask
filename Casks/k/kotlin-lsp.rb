cask "kotlin-lsp" do
  arch arm: "-aarch64"
  os macos: "sit", linux: "tar.gz"

  version "262.9593.0"
  sha256 arm:          "6ba6021a706b21e64cef33f7e2b79f187c0910320722bb2d3ed05ad1115ec43f",
         intel:        "17369fda97c85418ac24ab38a9df56b21522a3468dfe193832fe455c13920745",
         arm64_linux:  "2317831c6e5607d05b7ebc1da655330125ce0e3d66fbf24517dfce442debc14e",
         x86_64_linux: "2d99d8e198fbe4aa8f4481e37799724ce94803b4ea12a60b416040e3fcd7cc5e"

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
