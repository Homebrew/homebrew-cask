cask :v1 => 'sage' do
  version '6.4.1'
  sha256 '3ae99dbddd5609271aa87ef38db58dd53fe2add3a58abed3b80750884100391e'

  url "http://boxen.math.washington.edu/home/sagemath/sage-mirror/osx/intel/sage-#{version}-x86_64-Darwin-OSX_10.10_x86_64-app.dmg"
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
