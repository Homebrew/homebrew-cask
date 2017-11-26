cask 'nzbvortex' do
  version '3.4.1'
  sha256 '237b09fc4a4826e8f74c21f4093282454172259a50906aa6bdb7aaa15193360d'

  url "https://www.nzbvortex.com/downloads/NZBVortex-#{version}.zip"
  appcast "https://www.nzbvortex.com/update/appcast_v#{version.major}.xml",
          checkpoint: '740ee0732a41efe82b460ec93923a331bb882c7ce97f6548a1fe5790f6b9857d'
  name 'NZBVortex'
  homepage 'https://www.nzbvortex.com/landing/'

  app "NZBVortex #{version.major}.app"
end
