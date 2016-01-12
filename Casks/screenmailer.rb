cask 'screenmailer' do
  version :latest
  sha256 :no_check

  url 'https://www.screenmailer.com/releases/current/Screenmailer.zip'
  appcast 'https://www.screenmailer.com/releases/current/releases.xml',
          :sha256 => '06034ed6b253c0563a9a1d8dcddd35fa400b381cb4024095f9c015af3858617f'
  name 'Screenmailer'
  homepage 'https://www.screenmailer.com/'
  license :commercial

  app 'Screenmailer.app'
end
