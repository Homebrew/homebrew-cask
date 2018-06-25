cask 'simsim' do
  version '1.3.4'
  sha256 'cbfdd3b500f381bf60dc0111047e6bc5e85090c17eb47319027c7327d650ca9b'

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
