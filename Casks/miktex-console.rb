cask 'miktex-console' do
  version '2.9.7350-1'
  sha256 '4d4bf5fcbe70cc3aca8d36c96df8101a1301ae0f7369742f91262266633c71dd'

  url "https://miktex.org/download/ctan/systems/win32/miktex/setup/darwin-x86_64/miktex-#{version}-darwin-x86_64.dmg"
  appcast 'https://miktex.org/download'
  name 'MiKTeX'
  homepage 'https://miktex.org/'

  app 'MiKTeX Console.app'
end
