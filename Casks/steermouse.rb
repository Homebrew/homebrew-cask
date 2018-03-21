cask 'steermouse' do
  version '5.2.1'
  sha256 '1ef81a06e3dec2639b2576ff556df43bb7a8a931ced74fbc507bd6bfced775df'

  url "http://plentycom.jp/ctrl/files_sm/SteerMouse#{version}.dmg"
  appcast 'http://plentycom.jp/en/steermouse/download.php',
          checkpoint: 'e3e8b724373a7009cf967f8eea9bb811209d1cedb4aec50e211066c3247c38e1'
  name 'SteerMouse'
  homepage 'http://plentycom.jp/en/steermouse/'

  prefpane 'SteerMouse.prefPane'
end
