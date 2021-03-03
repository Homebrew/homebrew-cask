cask "miktex-console" do
  version "21.2"
  sha256 "54a92b8e7283055b731b4ffa0665d31c961fa78b69dfe2a67fec1cb674f85622"

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
