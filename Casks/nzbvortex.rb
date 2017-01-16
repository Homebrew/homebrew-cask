cask 'nzbvortex' do
  version '3.3.9'
  sha256 'c009ad152e11d8b9a28c100865c59e193e2ca5eace09400a59415debedca603d'

  url "https://www.nzbvortex.com/downloads/NZBVortex-#{version}.zip"
  appcast "https://www.nzbvortex.com/update/appcast_v#{version.major}.xml",
          checkpoint: '20e0395f9fc18746d90f0ee43d77fcd762a8653bfce1fb9e04e3fbe251796ac8'
  name 'NZBVortex'
  homepage 'https://www.nzbvortex.com/landing/'

  app "NZBVortex #{version.major}.app"
end
