cask 'miktex-console' do
  version '20.6'
  sha256 '8e28dfec0a309bd152f697acc0ca2ab751fa52ad1313a6947ea665e968c11010'

  url "https://miktex.org/download/ctan/systems/win32/miktex/setup/darwin-x86_64/miktex-#{version}-darwin-x86_64.dmg"
  appcast 'https://miktex.org/download'
  name 'MiKTeX'
  homepage 'https://miktex.org/'

  app 'MiKTeX Console.app'
end
