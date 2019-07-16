cask 'stellarium' do
  version '0.19.1'
  sha256 'e2d0fc688dd8e47c6f420610e4491003d519926c9ba1e5fffb0d5e17835b586d'

  # github.com/Stellarium/stellarium was verified as official when first introduced to the cask
  url "https://github.com/Stellarium/stellarium/releases/download/v#{version}/Stellarium-#{version}.dmg"
  appcast 'https://github.com/Stellarium/stellarium/releases.atom'
  name 'Stellarium'
  homepage 'https://stellarium.org/'

  depends_on macos: '>= :yosemite'

  app 'Stellarium.app'

  zap trash: '~/Library/Preferences/Stellarium'
end
