cask 'miktex-console' do
  version '2.9.7250-1'
  sha256 'bae786c68a2c9873392047e8330384db5ce13bc52751c7bcc152b5c2416a3ce5'

  url "https://miktex.org/download/ctan/systems/win32/miktex/setup/darwin-x86_64/miktex-#{version}-darwin-x86_64.dmg"
  appcast 'https://miktex.org/download'
  name 'MiKTeX'
  homepage 'https://miktex.org/'

  app 'MiKTeX Console.app'
end
