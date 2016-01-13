cask 'slate' do
  version :latest
  sha256 :no_check

  # ninjamonkeysoftware.com is the official download host per the vendor homepage
  url 'http://slate.ninjamonkeysoftware.com/Slate.dmg'
  appcast 'https://www.ninjamonkeysoftware.com/slate/appcast.xml',
          :checkpoint => 'ffad4d36b8b87ba512d18fd7d5346269c3feb32a91243859719df7fdf85f82fc'
  name 'Slate'
  homepage 'https://github.com/jigish/slate'
  license :gpl

  app 'Slate.app'

  zap :delete => [
                   '~/.slate',
                   '~/.slate.js',
                   '~/Library/Application Support/com.slate.Slate',
                 ]
end
