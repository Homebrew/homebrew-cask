cask 'sigil' do
  version '0.9.8'
  sha256 'cd54a70314df223bad7a1c6d5322b012ddf3402ead14e11b88372165ca66decf'

  # github.com/Sigil-Ebook/Sigil was verified as official when first introduced to the cask
  url "https://github.com/Sigil-Ebook/Sigil/releases/download/#{version}/Sigil-#{version}-Mac-Package.dmg"
  appcast 'https://github.com/Sigil-Ebook/Sigil/releases.atom',
          checkpoint: '241988e25e2e75340deb541c27f86783a6d4f240a104bd6388e0965afe57388d'
  name 'Sigil'
  homepage 'https://sigil-ebook.com/'

  app 'Sigil.app'
end
