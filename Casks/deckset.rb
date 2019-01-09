cask 'deckset' do
  version '2.0.8,2503'
  sha256 'eb74188d7e8810085f44eb3532ec9aad2fa35f58bc73a735cc4314e785084db7'

  url "https://dl.decksetapp.com/Deckset+#{version.before_comma}+(#{version.after_comma}).dmg"
  appcast 'https://dl.decksetapp.com/appcast.xml'
  name 'Deckset'
  homepage 'https://www.decksetapp.com/'

  depends_on macos: '>= :sierra'

  app 'Deckset.app'
end
