cask 'screenmailer' do
  version '2.0.5'
  sha256 'bf07efffedffde9bc0b770cb9b7bd1d80d3371ebec64407b2ff6c61efdd7153a'

  url 'https://www.screenmailer.com/releases/current/Screenmailer.zip'
  appcast 'https://www.screenmailer.com/releases/current/releases.xml'
  name 'Screenmailer'
  homepage 'https://www.screenmailer.com/'

  app 'Screenmailer.app'
end
