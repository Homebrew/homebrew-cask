cask 'steermouse' do
  version '5.1.2'
  sha256 'e6a9bd99fa5316fbfda843e4ab682ad3254af72792b33ff0fe5ddbb27eab8862'

  url "http://plentycom.jp/ctrl/files_sm/SteerMouse#{version}.dmg"
  appcast 'http://plentycom.jp/en/steermouse/download.php',
          checkpoint: 'c200c1a68c60fb7b2021240524b9ae7029c3fb56377aad22179716dc5e43882c'
  name 'SteerMouse'
  homepage 'http://plentycom.jp/en/steermouse/'

  prefpane 'SteerMouse.prefPane'
end
