cask "haskell-language-server" do
  version "0.7.1"
  sha256 "87ac37cfc74abb4f348a799ee6e76266fe1972dead72b7b11ee1411cc83924ed"

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

  caveats "You need to provide GHC/stack/cabal yourself."
end
