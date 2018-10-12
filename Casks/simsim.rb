cask 'simsim' do
  version '1.4.0'
  sha256 '8b53fab9530b28fc7c3fd6fbb1edbb9c1f39a007ed6644f2b20ec29a6e27cc05'

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
