cask :v1 => 'sage' do
  version '6.7'
  sha256 'd5887741c1f3b85030ade9f623f55e308947a35c9c620e7ccb84bf23a6ec939f'

  # mit.edu is an official download host per the vendor download page
  url "http://mirrors.mit.edu/sage/osx/sage-#{version}-x86_64-Darwin-OSX_10.10_x86_64-app.dmg"
  name 'Sage'
  homepage 'http://www.sagemath.org/'
  license :gpl

  app "Sage-#{version}.app"
  binary "Sage-#{version}.app/Contents/Resources/sage/sage"

  zap :delete => [
                  '~/.sage',
                  '~/Library/Logs/sage.log',
                 ]

  caveats do
    files_in_usr_local
  end
end
