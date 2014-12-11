cask :v1 => 'screenmailer' do
  version :latest
  sha256 :no_check

  url 'http://www.screenmailer.com/download'
  appcast 'http://www.screenmailer.com/releases/current/releases.xml'
  homepage 'http://www.screenmailer.com'
  license :unknown    # todo: improve this machine-generated value

  app 'Screenmailer.app'
end
