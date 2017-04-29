cask 'beyond-compare' do
  version '4.2.0.22302'
  sha256 '6f927f5c1044f217ce0a37ea7869770f98ecaeff73222c0af5151055f5bc3729'

  url "http://www.scootersoftware.com/BCompareOSX-#{version}.zip"
  appcast "http://www.scootersoftware.com/checkupdates.php?product=bc#{version.major}&platform=osx",
          checkpoint: '18ae0b43e5d8123d75501e785b7677f5bddd37f81681150afb33baa518560101'
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
