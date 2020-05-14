cask 'streamlabs-obs' do
  version '0.1.0'
  sha256 '019f71588d710fea781340db71a9a229bbd35ec51a7a56687f4fa772f25c1afe'

  url "https://slobs-cdn.streamlabs.com/Streamlabs+OBS-#{version}-mac.dmg"
  appcast 'https://github.com/stream-labs/streamlabs-obs/releases.atom'
  name 'Streamlabs OBS'
  homepage 'https://streamlabs.com/'

  app 'Streamlabs OBS.app'
end
