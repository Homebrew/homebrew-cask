cask :v1 => 'dradio' do
  version '1.6.1_1576'
  sha256 '1a297d0ccdf1554caf421f8774d3e6342d1ce600cb70392ca1bc3e345b04e9ea'

  url "http://dradio.me/updates/dRadio-#{version.sub(%r{.*_},'')}.zip"
  appcast 'http://dradio.me/updates/appcast.xml'
  name 'dRadio'
  homepage 'http://dradio.me'
  license :gratis

  app 'dRadio.app'
end
