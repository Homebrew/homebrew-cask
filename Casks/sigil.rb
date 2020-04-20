cask 'sigil' do
  version '1.2.0'
  sha256 '813feec7f8e0b1aace2dacc68e3452ca795b082aa6d11aae0d45e9c20d0ab469'

  # github.com/Sigil-Ebook/Sigil/ was verified as official when first introduced to the cask
  url "https://github.com/Sigil-Ebook/Sigil/releases/download/#{version}/Sigil.app-#{version}-Mac.txz"
  appcast 'https://github.com/Sigil-Ebook/Sigil/releases.atom'
  name 'Sigil'
  homepage 'https://sigil-ebook.com/'

  depends_on macos: '>= :sierra'

  app 'Sigil.app'

  zap trash: [
               '~/Library/Application Support/sigil-ebook',
               '~/Library/Preferences/com.sigil-ebook.Sigil.app.plist',
               '~/Library/Saved Application State/com.sigil-ebook.Sigil.app.savedState',
             ]
end
