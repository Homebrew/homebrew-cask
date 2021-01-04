cask "haskell-language-server" do
  version "0.8.0"
  sha256 "1c1668bb455a5164df62774e6fb8f8f91a831ce527d9e5f89f453fb28ef54622"

  url "https://github.com/haskell/haskell-language-server/releases/download/#{version}/haskell-language-server-macOS-#{version}.tar.gz"
  appcast "https://github.com/haskell/haskell-language-server/releases.atom"
  name "Haskell Language Server"
  desc "Integration point for ghcide and haskell-ide-engine. One IDE to rule them all"
  homepage "https://github.com/haskell/haskell-language-server"

  binary "haskell-language-server-wrapper"
  binary "haskell-language-server-8.6.4"
  binary "haskell-language-server-8.6.5"
  binary "haskell-language-server-8.8.2"
  binary "haskell-language-server-8.8.3"
  binary "haskell-language-server-8.8.4"
  binary "haskell-language-server-8.10.1"
  binary "haskell-language-server-8.10.2"
  binary "haskell-language-server-8.10.3"

  caveats "You need to provide GHC/stack/cabal yourself."
end
