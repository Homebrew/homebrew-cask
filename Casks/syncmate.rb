cask :v1 => 'syncmate' do
  version :latest
  sha256 :no_check

  url 'http://www.sync-mac.com/download/syncmate.dmg'
  name 'Sync Mate 5'
  appcast 'http://www.eltima.com/download/syncmate-update/syncmate6.xml',
          :sha256 => 'b1b64496e745b8fcf9cf064cb0aa87281c95d65f86264ef324b7565d5a174a21'
  homepage 'http://www.sync-mac.com'
  license :commercial

  app 'SyncMate.app'
end
