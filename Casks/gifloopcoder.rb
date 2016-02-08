cask 'gifloopcoder' do
  version '1.3.3'
  sha256 '7f299f956fd7b035e7cdd65d482e1736afdefc4389c6a85a5ab3c2eb477adcfa'

  url "https://github.com/bit101/gifloopcoder/releases/download/#{version}/glc-osx-#{version}.zip"
  appcast 'https://github.com/bit101/gifloopcoder/releases.atom',
          checkpoint: '8e59b3f524ac90a6d48214eb64d0101949af37bb3e5debcc9cd46c6ce741eea1'
  name 'GIFLoopCoder'
  homepage 'http://www.gifloopcoder.com/'
  license :mit

  app 'glc-osx/GIFLoopCoder.app'
end
