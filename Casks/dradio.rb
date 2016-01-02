cask 'dradio' do
  version '1.6.1_1576'
  sha256 '1a297d0ccdf1554caf421f8774d3e6342d1ce600cb70392ca1bc3e345b04e9ea'

  url "http://dradio.me/updates/dRadio-#{version.sub(%r{.*_},'')}.zip"
  appcast 'http://dradio.me/updates/appcast.xml',
          :sha256 => 'e46ae0c86e7204db96da7b950845ab145151c646eb060972bf2920b77173ab0d'
  name 'dRadio'
  homepage 'http://dradio.me'
  license :gratis

  app 'dRadio.app'
end
