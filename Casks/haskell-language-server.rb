cask "haskell-language-server" do
  version "1.0.0"
  sha256 "74e7624c889c0235f0b02d7e7f164d5eb95b611d584fc8602f0b3a099b73f8be"

  url "https://github.com/haskell/haskell-language-server/releases/download/#{version}/haskell-language-server-macOS-#{version}.tar.gz"
  name "Haskell Language Server"
  desc "Integration point for ghcide and haskell-ide-engine. One IDE to rule them all."
  homepage "https://github.com/haskell/haskell-language-server"

  binary "haskell-language-server-wrapper"
  binary "haskell-language-server-8.6.4"
  binary "haskell-language-server-8.6.5"
  binary "haskell-language-server-8.8.2"
  binary "haskell-language-server-8.8.3"
  binary "haskell-language-server-8.8.4"
  binary "haskell-language-server-8.10.2"
  binary "haskell-language-server-8.10.3"
  binary "haskell-language-server-8.10.4"

  caveats <<-EOS
    Install with `brew install #{token} --no-quarantine`,
    or manually approve security exceptions in System Preferences -> Security & Privacy.

    You need to provide GHC/stack/cabal yourself, depending on your needs
    (see https://github.com/haskell/haskell-language-server#prerequisites).
  EOS
end
