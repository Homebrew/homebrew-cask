cask 'gifloopcoder' do
  version '1.3.3'
  sha256 'd628750af6bc20aadc7979a9760b8ae400411a4228363f0b1e60fa6bed63f25b'

  url "https://github.com/bit101/gifloopcoder/releases/download/#{version}/glc-osx-#{version}.zip"
  appcast 'https://github.com/bit101/gifloopcoder/releases.atom',
          checkpoint: '8e59b3f524ac90a6d48214eb64d0101949af37bb3e5debcc9cd46c6ce741eea1'
  name 'GIFLoopCoder'
  homepage 'http://www.gifloopcoder.com/'
  license :mit

  app 'glc-osx/GIFLoopCoder.app'
end
