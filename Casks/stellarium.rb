cask 'stellarium' do
  version '0.18.2'
  sha256 '70ebd4c0259d246c0b45c5f350ae9582a893a292fa432f1db15d040390c39e4e'

  # github.com/Stellarium/stellarium was verified as official when first introduced to the cask
  url "https://github.com/Stellarium/stellarium/releases/download/v#{version.major_minor_patch}/Stellarium-#{version}.dmg"
  appcast 'https://github.com/Stellarium/stellarium/releases.atom'
  name 'Stellarium'
  homepage 'https://stellarium.org/'

  depends_on macos: '>= :yosemite'

  app 'Stellarium.app'

  zap trash: '~/Library/Preferences/Stellarium'
end
