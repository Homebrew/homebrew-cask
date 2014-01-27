class Paraview < Cask
  url 'http://www.paraview.org/paraview-downloads/download.php?submit=Download&version=v4.1&type=binary&os=osx&downloadFile=ParaView-4.1.0-Darwin-64bit.dmg'
  homepage 'http://www.paraview.org/'
  version '4.1.0'
  sha1 '292333198dbb6ec09fca404dee5bf3fcce2525f9'
  link 'paraview.app'
  caveats <<-EOS.undent
    This version of Paraview should be installed if your system Python
    version is 2.7. If you are running OS X Lion (10.7) or Mountain
    Lion (10.8) and your system Python version is 2.6, please instead
    run 'brew tap caskroom/versions' and install paraview-lion-python27.
   EOS
end
