cask 'gifloopcoder' do
  version '1.3.4'
  sha256 'e65257d4739118a9fbb686aac43f81004d28402931149dc495b6616086dc0f6e'

  url "https://github.com/bit101/gifloopcoder/releases/download/#{version}/glc-osx-#{version}.zip"
  appcast 'https://github.com/bit101/gifloopcoder/releases.atom',
          checkpoint: '60c9a7f1f53e0cd024f9a9ac274216113ecd24a63062347259fd230c5bd3c0b7'
  name 'GIFLoopCoder'
  homepage 'http://www.gifloopcoder.com/'
  license :mit

  app 'glc-osx/GIFLoopCoder.app'
end
