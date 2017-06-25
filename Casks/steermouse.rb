cask 'steermouse' do
  version '5.1.1'
  sha256 '972a92c046b62843841efba5180fa287a9a2a6d77edd13c4ab325939631dcb45'

  url "http://plentycom.jp/ctrl/files_sm/SteerMouse#{version}.dmg"
  appcast 'http://plentycom.jp/en/steermouse/download.php',
          checkpoint: '5dc7b8db750d1f15611957bb3d13adcdde56561a620e9cdc032365b5846660fb'
  name 'SteerMouse'
  homepage 'http://plentycom.jp/en/steermouse/'

  prefpane 'SteerMouse.prefPane'
end
