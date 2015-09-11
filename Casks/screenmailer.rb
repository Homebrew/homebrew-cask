cask :v1 => 'screenmailer' do
  version :latest
  sha256 :no_check

  url 'https://www.screenmailer.com/releases/current/Screenmailer.zip'
  appcast 'https://www.screenmailer.com/releases/current/releases.xml'
  name 'Screenmailer'
  homepage 'https://www.screenmailer.com/'
  license :commercial

  app 'Screenmailer.app'
end
