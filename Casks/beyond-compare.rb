cask :v1 => 'beyond-compare' do
  version '4.1.2.20720'
  sha256 '1e947349e53315d5c935867ee5784c22cd71e4b581f205cdc3ad34a2910b4b71'

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
