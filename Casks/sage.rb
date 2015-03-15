cask :v1 => 'sage' do
  version '6.5'
  sha256 'f369e4e8f4d94990b318fc3d58bdf87ff0e7f10e3f26fef3b4b1fbf6e7f684d2'

  # washington.edu is the official download host per the vendor homepage
  url "http://boxen.math.washington.edu/home/sagemath/sage-mirror/osx/intel/sage-#{version}-x86_64-Darwin-OSX_10.10_x86_64-app.dmg"
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
