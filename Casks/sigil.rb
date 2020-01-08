cask 'sigil' do
  version '1.0.0'
  sha256 '69cfc36ffec87e3c701b5ce46a9c45280a81c5378ec89596a96edf74e9a07037'

  # github.com/Sigil-Ebook/Sigil was verified as official when first introduced to the cask
  url "https://github.com/Sigil-Ebook/Sigil/releases/download/#{version}/Sigil.app-#{version}a-Mac.txz"
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
