cask 'mercurymover' do
  version :latest
  sha256 :no_check

  url 'http://www.heliumfoot.com/files/release/mercurymover/MercuryMover.dmg'
  name 'MercuryMover'
  homepage 'http://www.heliumfoot.com/mercurymover'

  prefpane 'MercuryMover.prefPane'

  zap trash: '~/Library/Preferences/com.heliumfoot.MyWiAgent.plist'
end
