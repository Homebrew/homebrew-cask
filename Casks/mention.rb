cask 'mention' do
  version '2.0.14'
  sha256 'bf9c951efb3a5b6a08e52769f5387e322138465ca6b9deac5305babc25be6521'

  url 'https://en.mention.com/downloads/mac/mention.dmg'
  appcast 'https://web.mention.com/uploads/appcast-mention.xml',
          checkpoint: '87e9053220e4eff05ab00275283c876a28eb0bfcf84aff6b8acb2ef2f6ce9582'
  name 'Mention'
  homepage 'https://en.mention.com/'

  app 'Mention.app'
end
