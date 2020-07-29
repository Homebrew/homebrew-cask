cask 'miktex-console' do
  version '2.9.7445-1'
  sha256 '8b8e19486ca519a1594de5248d6d3269bfd3b13505079924b6c601e189e272db'

  url "https://miktex.org/download/ctan/systems/win32/miktex/setup/darwin-x86_64/miktex-#{version}-darwin-x86_64.dmg"
  appcast 'https://miktex.org/download'
  name 'MiKTeX'
  homepage 'https://miktex.org/'

  app 'MiKTeX Console.app'
end
