cask "miktex-console" do
  version "20.11"
  sha256 "859ec3032fec5c6d1b72c947eeb8f0ae93e8cbd584e02093a451964b814d4d11"

  url "https://miktex.org/download/ctan/systems/win32/miktex/setup/darwin-x86_64/miktex-#{version}-darwin-x86_64.dmg"
  appcast "https://miktex.org/download"
  name "MiKTeX"
  homepage "https://miktex.org/"

  app "MiKTeX Console.app"
end
