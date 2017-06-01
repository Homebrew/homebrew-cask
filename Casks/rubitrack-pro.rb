cask 'rubitrack-pro' do
  version '4.4.3'
  sha256 '3f34db51fc8312a73306ee7b3b9f4b5fbdb9911bf7dc4813659742262365a026'

  url "https://www.rubitrack.com/files/rubiTrack-#{version}_u.dmg"
  appcast "https://www.rubitrack.com/autoupdate/sparkle#{version.major}.xml",
          checkpoint: 'e8c05e82d571d59ba22d83db7914b3430503ed41800b48bbaee84eaeb1fd3e7a'
  name 'rubiTrack'
  homepage 'https://www.rubitrack.com/'

  depends_on macos: '>= :yosemite'

  app "rubiTrack #{version.major} Pro.app"
end
