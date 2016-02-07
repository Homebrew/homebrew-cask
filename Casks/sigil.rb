cask 'sigil' do
  version '0.9.3'
  sha256 '83164918449ceee1080e1491c1d33ef9afabcf4d8866a4c738d24e58e27a89d0'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/Sigil-Ebook/Sigil/releases/download/#{version}/Sigil-#{version}-Mac-Package.dmg"
  appcast 'https://github.com/Sigil-Ebook/Sigil/releases.atom',
          checkpoint: '0b17e785f19bbdb331a4f141e00804eaaafd210a64f4a1b84097abbeaba4c860'
  name 'Sigil'
  homepage 'http://sigil-ebook.com/'
  license :gpl

  app 'Sigil.app'
end
