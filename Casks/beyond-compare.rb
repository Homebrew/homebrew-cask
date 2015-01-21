cask :v1 => 'beyond-compare' do
  version '4.0.4.19477'
  sha256 'f37569d5f116ac76607e4c0df6081cf93d8c16ac61c4350e8e9495cc89714ceb'

  url "http://www.scootersoftware.com/BCompareOSX-#{version}.zip"
  homepage 'http://www.scootersoftware.com/'
  license :commercial

  app 'Beyond Compare.app'

  postflight do
    suppress_move_to_applications
  end

  zap :delete => [
                  '~/Library/Application Support/Beyond Compare',
                  '~/Library/Caches/com.apple.helpd/Generated/com.ScooterSoftware.BeyondCompare.help',
                  '~/Library/Caches/com.ScooterSoftware.BeyondCompare',
                  '~/Library/Saved Application State/com.ScooterSoftware.BeyondCompare.savedState',
                 ]
end
