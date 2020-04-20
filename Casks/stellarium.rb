cask 'stellarium' do
  version '0.20.0'
  sha256 'f956c1fa05475bc37d86b1c04438912a28ec26736577a9dbb48502f2f9827c10'

  # github.com/Stellarium/stellarium/ was verified as official when first introduced to the cask
  url "https://github.com/Stellarium/stellarium/releases/download/v#{version}/Stellarium-#{version}.zip"
  appcast 'https://github.com/Stellarium/stellarium/releases.atom'
  name 'Stellarium'
  homepage 'https://stellarium.org/'

  depends_on macos: '>= :sierra'

  app 'Stellarium.app'

  zap trash: '~/Library/Preferences/Stellarium'
end
