class Obs < Cask
  version '0.4.2'
  sha256 'fc130505155e343fa27567e4536a230db798b3f3d710ac953f220baaca36cf73'

  url "https://github.com/jp9000/obs-studio/releases/download/#{version}/OBSMac-#{version}.zip"
  homepage 'http://obsproject.com/'

  link 'OBS.app'
end
