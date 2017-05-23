cask 'beyond-compare' do
  version '4.2.2.22384'
  sha256 '53d6394b4751a50e14cd5c8dcd1650c09d662b6b46c067f8f3bf879634f26724'

  url "http://www.scootersoftware.com/BCompareOSX-#{version}.zip"
  appcast "http://www.scootersoftware.com/checkupdates.php?product=bc#{version.major}&platform=osx",
          checkpoint: '7367a47a30dbe60cda77a1c461bee54a7300467393a7362fc788de2bfb8743f2'
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
