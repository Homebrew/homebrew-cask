cask :v1 => 'beyond-compare' do
  version '4.0.5.19480'
  sha256 'e829feb875374e3212d10d925e5976ae816c917257673861896f624b3ca0381e'

  url "http://www.scootersoftware.com/BCompareOSX-#{version}.zip"
  name 'Beyond Compare'
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
