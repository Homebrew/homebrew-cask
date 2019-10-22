cask 'sigil' do
  version '0.9.18'
  sha256 'ecda56b7c6b4daac89c1c2eb38ac69cba7e5edbcd9a65d27be9e40d8e16100f9'

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
