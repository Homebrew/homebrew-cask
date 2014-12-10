cask :v1 => 'sage' do
  version '6.3'
  sha256 '024a326d51b6a5878d8e60512172199ee5d3db35d850d7a784f42935beeeb540'

  url "http://boxen.math.washington.edu/home/sagemath/sage-mirror/osx/intel/sage-#{version}-x86_64-Darwin-OSX_10.9_x86_64-app.dmg"
  homepage 'http://www.sagemath.org/'
  license :unknown    # todo: improve this machine-generated value

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
