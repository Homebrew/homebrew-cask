cask "miktex-console" do
  version "21.6"
  sha256 "1b6a638fca11cdce448cb7a1916c0bc49f38474d8a7d3a425611ded47bbacd19"

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
