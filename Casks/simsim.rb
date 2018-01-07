cask 'simsim' do
  version '1.3.3'
  sha256 '4c39334b1ed1791cd33a6366d2c6b349a7956f8c243d04a74d4fcf97c4cbea47'

  url "https://github.com/dsmelov/simsim/releases/download/#{version}/SimSim_#{version}.dmg"
  appcast 'https://github.com/dsmelov/simsim/releases.atom',
          checkpoint: '0b8129ef11a6ef819d26b1485f4afd90444ba05189aa4bab86c199e605432571'
  name 'SimSim'
  homepage 'https://github.com/dsmelov/simsim/'

  app 'SimSim.app'

  uninstall quit:       'com.dsmelov.SimSim',
            login_item: 'SimSim',
            kext:       'com.dsmelov.SimSim'

  zap trash: '~/Library/Preferences/com.dsmelov.SimSim.plist'
end
