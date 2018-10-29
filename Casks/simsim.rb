cask 'simsim' do
  version '1.4.1'
  sha256 '8a7cd76ad7dec0feba4be2df8cdb00e9b4180aa56b8e1dec23312681aae8a462'

  url "https://github.com/dsmelov/simsim/releases/download/#{version}/SimSim_#{version}.dmg"
  appcast 'https://github.com/dsmelov/simsim/releases.atom'
  name 'SimSim'
  homepage 'https://github.com/dsmelov/simsim/'

  app 'SimSim.app'

  uninstall quit:       'com.dsmelov.SimSim',
            login_item: 'SimSim',
            kext:       'com.dsmelov.SimSim'

  zap trash: '~/Library/Preferences/com.dsmelov.SimSim.plist'
end
