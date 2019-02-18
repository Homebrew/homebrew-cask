cask 'sigil' do
  version '0.9.11'
  sha256 '67df3947381449445db0e13ea8132103906725f1a5fe220a426c93a4e45811f7'

  # github.com/Sigil-Ebook/Sigil was verified as official when first introduced to the cask
  url "https://github.com/Sigil-Ebook/Sigil/releases/download/#{version}/Sigil-#{version}-Mac-Package.dmg"
  appcast 'https://github.com/Sigil-Ebook/Sigil/releases.atom'
  name 'Sigil'
  homepage 'https://sigil-ebook.com/'

  app 'Sigil.app'
end
