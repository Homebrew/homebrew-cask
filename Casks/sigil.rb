cask 'sigil' do
  version '0.9.5'
  sha256 'a077c9ef7e0ddb30abee1059fea887add9ebc1c6e9cacb7388677c90c06991e6'

  # github.com/Sigil-Ebook/Sigil was verified as official when first introduced to the cask
  url "https://github.com/Sigil-Ebook/Sigil/releases/download/#{version}/Sigil-#{version}-Mac-Package.dmg"
  appcast 'https://github.com/Sigil-Ebook/Sigil/releases.atom',
          checkpoint: '03bcf3d7439a69121211df3de5214aa6d2d58890de76ccff4f11bae25d5c0921'
  name 'Sigil'
  homepage 'https://sigil-ebook.com/'
  license :gpl

  app 'Sigil.app'
end
