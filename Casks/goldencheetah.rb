cask 'goldencheetah' do
  version '3.5'
  sha256 'b9a4e4575783c0f043260c12ddb5d02272bc566dbb2a31109b4d5166f7025fcd'

  # github.com/GoldenCheetah/GoldenCheetah was verified as official when first introduced to the cask
  url "https://github.com/GoldenCheetah/GoldenCheetah/releases/download/V#{version}/GoldenCheetah_v#{version}_64bit_MacOS.dmg"
  appcast 'https://github.com/GoldenCheetah/GoldenCheetah/releases.atom'
  name 'GoldenCheetah'
  homepage 'https://www.goldencheetah.org/'

  app 'GoldenCheetah.app'
end
