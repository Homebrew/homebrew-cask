cask 'miktex-console' do
  version '2.9.7400-1'
  sha256 'c73f5f41eb62346e553fad584e897e157c0a4abd27eea1d01f0bbcf0f920fad5'

  url "https://miktex.org/download/ctan/systems/win32/miktex/setup/darwin-x86_64/miktex-#{version}-darwin-x86_64.dmg"
  appcast 'https://miktex.org/download'
  name 'MiKTeX'
  homepage 'https://miktex.org/'

  app 'MiKTeX Console.app'
end
