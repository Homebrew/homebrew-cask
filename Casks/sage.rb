cask :v1 => 'sage' do
  if MacOS.release <= :lion
    version '6.6'
    sha256 'bdd740d8c92df5467269787aaf00e8cd0b2430cead259a4f15ef04e92b274282'
    # mit.edu is an official download host per the vendor download page
    url "http://mirrors.mit.edu/sage/osx/intel/sage-#{version}-x86_64-Darwin-OSX_10.7_x86_64-app.dmg"
  else
    version '6.8'
    sha256 'cffdb518f2683adbf1b790617aefcf4491b43744efa1fc73d638e189e4cf18d6'
    # mit.edu is an official download host per the vendor download page
    url "http://mirrors.mit.edu/sage/osx/intel/sage-#{version}-x86_64-Darwin-OSX_10.10_x86_64-app.dmg"
  end

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
