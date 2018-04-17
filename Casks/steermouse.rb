cask 'steermouse' do
  version '5.2.2'
  sha256 'aade8b6c6f7460c4e92fdf8933523f21fa4d60cdf2c55c5fb88ee8fb6b996fbe'

  url "http://plentycom.jp/ctrl/files_sm/SteerMouse#{version}.dmg"
  appcast 'http://plentycom.jp/en/steermouse/download.php',
          checkpoint: 'f9d7d0f81fa65eb93a8b0c7f8935c951b45e3506f4c42e887a39adae10e4a871'
  name 'SteerMouse'
  homepage 'http://plentycom.jp/en/steermouse/'

  prefpane 'SteerMouse.prefPane'
end
