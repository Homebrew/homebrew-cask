class Cura < Cask
  version '14.09'
  sha256 '6f627cd60bc849f86d9f4b29b3d2971744187b7dc5392965464d16dd45a35f9a'

  url "http://software.ultimaker.com/current/Cura-#{version}-MacOS.dmg"
  homepage 'http://daid.github.com/Cura/'
  license :oss

  app 'Cura.app'
end
