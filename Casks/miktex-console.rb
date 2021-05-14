cask "miktex-console" do
  version "21.3"
  sha256 "7eba2106c72c2e7f094585cabce5d0c3e338118c8cc9ed4c80076bd9ca3235e1"

  url "https://miktex.org/download/ctan/systems/win32/miktex/setup/darwin-x86_64/miktex-#{version}-darwin-x86_64.dmg"
  name "MiKTeX"
  homepage "https://miktex.org/"

  livecheck do
    url "https://miktex.org/download"
    strategy :page_match
    regex(%r{href=.*?/miktex-(\d+(?:\.\d+)*)-darwin-x86_64\.dmg}i)
  end

  app "MiKTeX Console.app"
end
