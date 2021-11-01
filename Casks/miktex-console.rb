cask "miktex-console" do
  version "21.7"
  sha256 "a274220b1237837a300717042258a27092f4065514634df5ce8da05a0c0956b1"

  url "https://miktex.org/download/ctan/systems/win32/miktex/setup/darwin-x86_64/miktex-#{version}-darwin-x86_64.dmg"
  name "MiKTeX"
  desc "TeX distribution"
  homepage "https://miktex.org/"

  livecheck do
    url "https://miktex.org/download"
    strategy :page_match
    regex(%r{href=.*?/miktex-(\d+(?:\.\d+)*)-darwin-x86_64\.dmg}i)
  end

  app "MiKTeX Console.app"
end
