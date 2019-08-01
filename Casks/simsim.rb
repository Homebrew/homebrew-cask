cask 'simsim' do
  version '1.4.2'
  sha256 'b022db8fc5d2fea84c0bb1523183a4d6da2f22c2115c8a8aebc3036a5419fcb4'

  url "https://github.com/dsmelov/simsim/releases/download/#{version}/SimSim_#{version}.zip"
  appcast 'https://github.com/dsmelov/simsim/releases.atom'
  name 'SimSim'
  homepage 'https://github.com/dsmelov/simsim/'

  depends_on macos: '>= :high_sierra'

  app 'SimSim.app'

  uninstall quit:       'com.dsmelov.SimSim',
            login_item: 'SimSim'

  zap trash: '~/Library/Preferences/com.dsmelov.SimSim.plist'
end
