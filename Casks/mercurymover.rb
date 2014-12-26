cask :v1 => 'mercurymover' do
  version :latest
  sha256 :no_check

  url 'http://www.heliumfoot.com/files/release/mercurymover/MercuryMover.dmg'
  homepage 'http://www.heliumfoot.com/mercurymover'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  prefpane 'MercuryMover.prefPane'

  zap :delete => '~/Library/Preferences/com.heliumfoot.MyWiAgent.plist'
end
