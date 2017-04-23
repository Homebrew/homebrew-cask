cask 'beyond-compare' do
  version '4.2.0.22108'
  sha256 '5850db6b7f9415785c9e722943cfb601d074d706e2233c87667f96cdcbed754d'

  url "http://www.scootersoftware.com/BCompareOSX-#{version}.zip"
  appcast "http://www.scootersoftware.com/checkupdates.php?product=bc#{version.major}&platform=osx",
          checkpoint: 'd5d70e04ae38dbeddeaf77db67081be70a04c98e01e263a5f8352ad042ae6670'
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
