cask 'goldencheetah' do
  version '3.4_Qt551'
  sha256 '71f06e8e86a525c5fd5dcf7497795e46fa4f609a075e1bf272ed2f9831146daf'

  # github.com/GoldenCheetah/GoldenCheetah was verified as official when first introduced to the cask
  url "https://github.com/GoldenCheetah/GoldenCheetah/releases/download/V#{version.major_minor}/GoldenCheetah_V#{version}_64bit.dmg"
  appcast 'https://github.com/GoldenCheetah/GoldenCheetah/releases.atom',
          checkpoint: '9989aa51d87df94e902f239cd8bfb17aaeeb328034a5fc0948e79439caa4a26e'
  name 'GoldenCheetah'
  homepage 'http://www.goldencheetah.org/'

  app 'GoldenCheetah.app'
end
