cask "miktex-console" do
  version "22.1"
  sha256 "a5b531a60fc51c1f01c1af46bf859863c6974ef8d71213e476642acb788a4e4f"

  url "https://miktex.org/download/ctan/systems/win32/miktex/setup/darwin-x86_64/miktex-#{version}-darwin-x86_64.dmg"
  name "MiKTeX"
  desc "TeX distribution"
  homepage "https://miktex.org/"

  livecheck do
    url "https://miktex.org/download"
    regex(%r{href=.*?/miktex-(\d+(?:\.\d+)+)-darwin-x86_64\.dmg}i)
  end

  app "MiKTeX Console.app"
end
