cask 'shimeike-formulatepro' do
  version '0.0.6'
  sha256 '9a5c37bad02a9dea7448e4ebe6fc6b0887efa05b0530603b9be1e5b0b3db2542'

  url "https://github.com/shimeike/formulatepro/releases/download/v#{version}a/FormulatePro-#{version}.dmg"
  appcast 'https://github.com/shimeike/formulatepro/releases.atom',
          checkpoint: '5577b6aea342f35701fb94c0eff888f0536b01cdfe21978fded979d44835b082'
  name 'FormulatePro'
  homepage 'https://github.com/shimeike/formulatepro/'

  app 'FormulatePro.app'
end
