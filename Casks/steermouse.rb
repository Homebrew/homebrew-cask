cask 'steermouse' do
  version '5.2'
  sha256 '5132d395444e3eec2439929a5a0b9e914b40fdf83fa422e343f137f9208622b8'

  url "http://plentycom.jp/ctrl/files_sm/SteerMouse#{version}.dmg"
  appcast 'http://plentycom.jp/en/steermouse/download.php',
          checkpoint: 'b05ac6946d3a51a73b7bf9268dce7e2a989199b6bafe79dfe12e23471642284c'
  name 'SteerMouse'
  homepage 'http://plentycom.jp/en/steermouse/'

  prefpane 'SteerMouse.prefPane'
end
