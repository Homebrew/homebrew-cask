cask 'sigil' do
  version '0.9.2'
  sha256 'ea9aca6e9c1c4d7931982fd6a3c5bcc4e1d35986e728fe3522dc92e9a6200f25'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/Sigil-Ebook/Sigil/releases/download/#{version}/Sigil-#{version}-Mac-Package.dmg"
  appcast 'https://github.com/Sigil-Ebook/Sigil/releases.atom',
          checkpoint: '960ce58effb6621ecc47451a3f95f6d1ef212198a6224b459be55778ecaee4aa'
  name 'Sigil'
  homepage 'http://sigil-ebook.com/'
  license :gpl

  app 'Sigil.app'
end
