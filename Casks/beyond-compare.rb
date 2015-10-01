cask :v1 => 'beyond-compare' do
  version '4.1.1.20615'
  sha256 'c0cfe391abf29073badd6351d3b26a9c5c0e4c82de85d03213e2bffb02c6709c'

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
