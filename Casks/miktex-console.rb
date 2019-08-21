cask 'miktex-console' do
  version '2.9.7050'
  sha256 '46689b9de8bf158d6c74a17ecdcacc418e8303bc47988228fa395c660d41a9fa'

  url "https://miktex.org/download/ctan/systems/win32/miktex/setup/darwin-x86_64/miktex-#{version}-1-darwin-x86_64.dmg"
  name 'MiKTeX'
  homepage 'https://miktex.org'

  app 'MiKTeX Console.app'
end
