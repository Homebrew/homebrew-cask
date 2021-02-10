cask "miktex-console" do
  version "21.1"
  sha256 "645d4bb816d712c5ba7f97ca21c30c8c1fdbf54600560f38408b05e208c529f0"

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
