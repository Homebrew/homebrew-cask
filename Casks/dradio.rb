cask :v1 => 'dradio' do
  version :latest
  sha256 :no_check

  url 'http://dradio.me/download'
  appcast 'http://dradio.me/updates/appcast.xml'
  homepage 'http://dradio.me'
  license :unknown    # todo: improve this machine-generated value

  app 'dRadio.app'
end
