cask 'nzbvortex' do
  version '3.3.3'
  sha256 'e98104b8c4784f47b8923ea91722d94edd5373c845ead96cb471642d101917f0'

  url "http://www.nzbvortex.com/downloads/NZBVortex-#{version}.zip"
  appcast "https://www.nzbvortex.com/update/appcast_v#{version.major}.xml",
          checkpoint: '5e0d2970bee06d3fc90ddc6f35d1e91106641db616fd0094cfcdb4d2886e06f2'
  name 'NZBVortex'
  homepage 'http://www.nzbvortex.com/'
  license :commercial

  app "NZBVortex #{version.major}.app"
end
