cask 'deckset' do
  version '2.0.5,2488'
  sha256 '52438a91eea2844a2acb27ac2c7f5bed3e8f6059495eee656da99329f4290e6c'

  url "https://dl.decksetapp.com/Deckset+#{version.before_comma}+(#{version.after_comma}).dmg"
  appcast 'https://dl.decksetapp.com/appcast.xml',
          checkpoint: '9d707349d48682282b98ba464e86969fe917482ca0b177062e220c6ec0513c68'
  name 'Deckset'
  homepage 'https://www.decksetapp.com/'

  depends_on macos: '>= :el_capitan'

  app 'Deckset.app'
end
