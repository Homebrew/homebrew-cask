cask 'nzbvortex' do
  version '3.3.6'
  sha256 'd83847ec2f9a981424918922cd7e12dae2434c6d386bdc368bbb2d4c3955e002'

  url "https://www.nzbvortex.com/downloads/NZBVortex-#{version}.zip"
  appcast "https://www.nzbvortex.com/update/appcast_v#{version.major}.xml",
          checkpoint: 'f4ca54a1dd9597962058922d4199f7bef816991e765fa26cca59e9f2a496ba51'
  name 'NZBVortex'
  homepage 'https://www.nzbvortex.com/'

  app "NZBVortex #{version.major}.app"
end
