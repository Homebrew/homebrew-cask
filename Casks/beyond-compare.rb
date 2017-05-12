cask 'beyond-compare' do
  version '4.2.1.22354'
  sha256 '50d87a513e1addacfdd85aa688d062807e214e78284a3ffc5bbfc8821bb69dce'

  url "http://www.scootersoftware.com/BCompareOSX-#{version}.zip"
  appcast "http://www.scootersoftware.com/checkupdates.php?product=bc#{version.major}&platform=osx",
          checkpoint: 'f35fb654ee34fd334318c25fadf79a9b34d977c54de6bb37498702526f23d64d'
  name 'Beyond Compare'
  homepage 'https://www.scootersoftware.com/'

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
