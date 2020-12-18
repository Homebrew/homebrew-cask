cask "miktex-console" do
  version "20.12"
  sha256 "6199c6a991b59074045fb55990309c71aaf38717dcdd2192c50700efca8dfc9d"

  url "https://miktex.org/download/ctan/systems/win32/miktex/setup/darwin-x86_64/miktex-#{version}-darwin-x86_64.dmg"
  appcast "https://miktex.org/download"
  name "MiKTeX"
  homepage "https://miktex.org/"

  app "MiKTeX Console.app"
end
