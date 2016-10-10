cask 'marsedit' do
  version '3.7.8'
  sha256 '78f44fa3a6600076cfca76b2ebff4fe594187d25c2a940fecfad9409e9ae5d7a'

  url "https://red-sweater.com/marsedit/MarsEdit#{version}.zip"
  appcast 'https://red-sweater.com/marsedit/appcast3.php',
          checkpoint: '623bfbb2c102fd41513b4641fcc4a3b0b04927c2f0812539c192c50e57edccc5'
  name 'MarsEdit'
  homepage 'https://red-sweater.com/marsedit/'

  app 'MarsEdit.app'
end
