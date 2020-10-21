cask "miktex-console" do
  version "20.10"
  sha256 "64d72cb92aeda3c62b7bce4ef164f51a2367756bd10131e9860f1a6abab85cce"

  url "https://miktex.org/download/ctan/systems/win32/miktex/setup/darwin-x86_64/miktex-#{version}-darwin-x86_64.dmg"
  appcast "https://miktex.org/download"
  name "MiKTeX"
  homepage "https://miktex.org/"

  app "MiKTeX Console.app"
end
