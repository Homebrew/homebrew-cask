cask :v1 => 'dradio' do
  version :latest
  sha256 :no_check

  url 'http://dradio.me/download'
  appcast 'http://dradio.me/updates/appcast.xml'
  homepage 'http://dradio.me'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'dRadio.app'
end
