cask :v1 => 'screenmailer' do
  version :latest
  sha256 :no_check

  url 'https://www.screenmailer.com/releases/current/Screenmailer.zip'
  appcast 'https://www.screenmailer.com/releases/current/releases.xml'
  name 'Screenmailer'
  homepage 'https://www.screenmailer.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Screenmailer.app'
end
