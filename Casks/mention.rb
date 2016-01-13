cask 'mention' do
  version :latest
  sha256 :no_check

  url 'https://en.mention.com/downloads/mac/mention.dmg'
  appcast 'https://web.mention.com/uploads/appcast-mention.xml',
          :checkpoint => '87e9053220e4eff05ab00275283c876a28eb0bfcf84aff6b8acb2ef2f6ce9582'
  name 'Mention'
  homepage 'https://en.mention.com/'
  license :gratis

  app 'Mention.app'
end
