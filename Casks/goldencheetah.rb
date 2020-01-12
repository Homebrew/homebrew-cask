cask 'goldencheetah' do
  version '3.5'
  sha256 '6f685f623e7896615ecad0df688920597ccce49a76956cc1e05e2b17857d89f9'

  # github.com/GoldenCheetah/GoldenCheetah was verified as official when first introduced to the cask
  url "https://github.com/GoldenCheetah/GoldenCheetah/releases/download/V#{version}/GoldenCheetah_v#{version}_64bit_MacOS.dmg"
  appcast 'https://github.com/GoldenCheetah/GoldenCheetah/releases.atom'
  name 'GoldenCheetah'
  homepage 'https://www.goldencheetah.org/'

  app 'GoldenCheetah.app'
end
