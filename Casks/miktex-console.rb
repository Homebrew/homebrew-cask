cask 'miktex-console' do
  version '2.9.7300-1'
  sha256 'da3b5b2ce6189ab7f66aca533c715f91ee0f2dadaede3fbb40e0a070ecf5d9d0'

  url "https://miktex.org/download/ctan/systems/win32/miktex/setup/darwin-x86_64/miktex-#{version}-darwin-x86_64.dmg"
  appcast 'https://miktex.org/download'
  name 'MiKTeX'
  homepage 'https://miktex.org/'

  app 'MiKTeX Console.app'
end
