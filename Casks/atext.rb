cask 'atext' do
  version '2.20'
  sha256 'ad7fb1a093ee0048011deb43a268cff57b09c0364522ea52b8a5acb8a26227f7'

  url 'https://www.trankynam.com/atext/downloads/aText.dmg'
  appcast 'https://www.trankynam.com/atext/aText-Appcast.xml',
          checkpoint: 'b7ff5d927a3ffdee10503b3ac12b2ddb7ab35eb232a0f6d369cf86d7d7c66467'
  name 'aText'
  homepage 'https://www.trankynam.com/atext/'

  app 'aText.app'
end
