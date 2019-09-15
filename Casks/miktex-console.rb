cask 'miktex-console' do
  version '2.9.7050-1'
  sha256 '46689b9de8bf158d6c74a17ecdcacc418e8303bc47988228fa395c660d41a9fa'

  url "https://miktex.org/download/ctan/systems/win32/miktex/setup/darwin-x86_64/miktex-#{version}-darwin-x86_64.dmg"
  appcast 'https://miktex.org/download'
  name 'MiKTeX'
  homepage 'https://miktex.org/'

  app 'MiKTeX Console.app'
end
