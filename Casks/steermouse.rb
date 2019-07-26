cask 'steermouse' do
  version '5.3.8'
  sha256 '1c9d4467af87abb6492fdec482cbfc549fd06a8a0011da7e5414c9786291a422'

  url "https://plentycom.jp/ctrl/files_sm/SteerMouse#{version}.dmg"
  appcast 'https://plentycom.jp/en/steermouse/download.php'
  name 'SteerMouse'
  homepage 'https://plentycom.jp/en/steermouse/'

  prefpane 'SteerMouse.prefPane'
end
