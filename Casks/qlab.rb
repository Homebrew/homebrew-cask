cask 'qlab' do
  version '4.4.3'
  sha256 'd4d7deb7fcba8b5a269181bc5f9baf380a5a3743156d05057629e39c12cddeab'

  url "https://figure53.com/qlab/downloads/QLab-#{version}.zip"
  appcast "https://figure53.com/qlab/downloads/appcast-v#{version.major}/"
  name 'QLab'
  homepage 'https://figure53.com/qlab/'

  auto_updates true

  app 'QLab.app'
end
