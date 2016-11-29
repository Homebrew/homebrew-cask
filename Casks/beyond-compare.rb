cask 'beyond-compare' do
  version '4.1.9.21719'
  sha256 '1576d3c7d07e2dac7a569e7e65631f0f706ec41f5e200ea2beaf977f45d3eccd'

  url "http://www.scootersoftware.com/BCompareOSX-#{version}.zip"
  name 'Beyond Compare'
  homepage 'http://www.scootersoftware.com/'

  app 'Beyond Compare.app'

  postflight do
    suppress_move_to_applications
  end

  zap delete: [
                '~/Library/Application Support/Beyond Compare',
                '~/Library/Caches/com.apple.helpd/Generated/com.ScooterSoftware.BeyondCompare.help',
                '~/Library/Caches/com.ScooterSoftware.BeyondCompare',
                '~/Library/Saved Application State/com.ScooterSoftware.BeyondCompare.savedState',
              ]
end
