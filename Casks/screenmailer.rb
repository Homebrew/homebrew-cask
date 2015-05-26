cask :v1 => 'screenmailer' do
  version :latest
  sha256 :no_check

  url 'http://www.screenmailer.com/download'
  appcast 'http://www.screenmailer.com/releases/current/releases.xml'
  name 'Screenmailer'
  homepage 'http://www.screenmailer.com'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Screenmailer.app'
end
