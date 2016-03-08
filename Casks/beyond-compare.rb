cask 'beyond-compare' do
  version '4.1.3.20814'
  sha256 '3f2dac1ce5273bf0e9c973e7ee7f82c6ee3720546cabcfc4b2b0017fab561f4c'

  url "http://www.scootersoftware.com/BCompareOSX-#{version}.zip"
  name 'Beyond Compare'
  homepage 'http://www.scootersoftware.com/'
  license :commercial

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
