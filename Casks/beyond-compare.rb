cask 'beyond-compare' do
  version '4.2.3.22587'
  sha256 'b33fc8925757801bc35a7ae3d11627f26b4ebde9d82a61a7c0f17e27385a359f'

  url "https://www.scootersoftware.com/BCompareOSX-#{version}.zip"
  appcast "https://www.scootersoftware.com/checkupdates.php?product=bc#{version.major}&platform=osx",
          checkpoint: '49e6135f03914bc71bb68ae2c05326441e302eba963ed5a078365a41b9cb1942'
  name 'Beyond Compare'
  homepage 'https://www.scootersoftware.com/'

  app 'Beyond Compare.app'
  binary "#{appdir}/Beyond Compare.app/Contents/MacOS/bcomp"

  zap trash: [
               '~/Library/Application Support/Beyond Compare',
               '~/Library/Caches/com.apple.helpd/Generated/com.ScooterSoftware.BeyondCompare.help*',
               '~/Library/Caches/com.ScooterSoftware.BeyondCompare',
               '~/Library/Saved Application State/com.ScooterSoftware.BeyondCompare.savedState',
             ]
end
