cask 'miktex-console' do
  version '2.9.7230-1'
  sha256 'eb55ebe17075516377c45885f2528323deb0176f5e9aaa8092cff77a1f42ff85'

  url "https://miktex.org/download/ctan/systems/win32/miktex/setup/darwin-x86_64/miktex-#{version}-darwin-x86_64.dmg"
  appcast 'https://miktex.org/download'
  name 'MiKTeX'
  homepage 'https://miktex.org/'

  app 'MiKTeX Console.app'
end
