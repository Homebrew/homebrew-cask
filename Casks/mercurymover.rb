cask :v1 => 'mercurymover' do
  version :latest
  sha256 :no_check

  url 'http://www.heliumfoot.com/files/release/mercurymover/MercuryMover.dmg'
  name 'MercuryMover'
  homepage 'http://www.heliumfoot.com/mercurymover'
  license :commercial

  prefpane 'MercuryMover.prefPane'

  zap :delete => '~/Library/Preferences/com.heliumfoot.MyWiAgent.plist'
end
