cask 'sigil' do
  version '1.1.0'
  sha256 '72e17a13f4adc003ddb92541e04005636bc0a4d461619af7e3a8bb19710d0a4d'

  # github.com/Sigil-Ebook/Sigil was verified as official when first introduced to the cask
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
