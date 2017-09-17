cask 'rubitrack-pro' do
  version '4.4.4'
  sha256 'fdaa6b12d77996c0806bea2230ba935ea3d9399ca356e696d9f5e56bfa406792'

  url "https://www.rubitrack.com/files/rubiTrack-#{version}_u.dmg"
  appcast "https://www.rubitrack.com/autoupdate/sparkle#{version.major}.xml",
          checkpoint: 'f285ddb3feb516b8ce18066ddf2f2d9cded8ba80b2ec0a8bf9fc3ac1bfba2935'
  name 'rubiTrack'
  homepage 'https://www.rubitrack.com/'

  depends_on macos: '>= :yosemite'

  app "rubiTrack #{version.major} Pro.app"
end
