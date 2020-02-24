cask 'simsim' do
  version '1.4.3'
  sha256 'cb6d9652085766ebe991b07df7ce726a30f8255f5acf4ab0f4f2f7d94f1c1dad'

  url "https://github.com/dsmelov/simsim/releases/download/#{version}/SimSim_#{version}.zip"
  appcast 'https://github.com/dsmelov/simsim/releases.atom'
  name 'SimSim'
  homepage 'https://github.com/dsmelov/simsim/'

  depends_on macos: '>= :high_sierra'

  app 'SimSim.app'

  uninstall quit: 'com.dsmelov.SimSim'

  zap trash: '~/Library/Preferences/com.dsmelov.SimSim.plist'
end
