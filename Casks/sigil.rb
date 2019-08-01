cask 'sigil' do
  version '0.9.16'
  sha256 '66506764dd87ab040c4ab7483fb86004aac411bde7a9e978da44ccb1d7eae782'

  # github.com/Sigil-Ebook/Sigil was verified as official when first introduced to the cask
  url "https://github.com/Sigil-Ebook/Sigil/releases/download/#{version}/Sigil-#{version}-Mac-Package.dmg"
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
