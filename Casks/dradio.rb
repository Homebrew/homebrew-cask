cask 'dradio' do
  version '1.6.1_1576'
  sha256 '1a297d0ccdf1554caf421f8774d3e6342d1ce600cb70392ca1bc3e345b04e9ea'

  url "http://dradio.me/updates/dRadio-#{version.sub(%r{.*_}, '')}.zip"
  appcast 'http://dradio.me/updates/appcast.xml',
          checkpoint: '8015cab2f43ad05aeff7b6cab2151b77878ec30663079b9c61abce71fa2b617d'
  name 'dRadio'
  homepage 'http://dradio.me'

  app 'dRadio.app'
end
