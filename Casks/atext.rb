cask 'atext' do
  version '2.22.1'
  sha256 'f3ccc0330aef9bee47c4d80367d700d2eea532848fa3966f42deb81c98d93d4d'

  url 'https://www.trankynam.com/atext/downloads/aText.dmg'
  appcast 'https://www.trankynam.com/atext/aText-Appcast.xml',
          checkpoint: 'bd048b20c0cfc8623845254e605433737ec290acf69acc5b57184f12e7727642'
  name 'aText'
  homepage 'https://www.trankynam.com/atext/'

  app 'aText.app'
end
