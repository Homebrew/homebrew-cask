cask "miktex-console" do
  version "21.12.10"
  sha256 "029ff0dbfd8b1210a7b437cbcd43f37cc82bb2b6df2dbfa3aeee1257cd597c19"

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
