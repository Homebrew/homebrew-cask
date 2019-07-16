cask 'rubitrack-pro' do
  version '5.2.4'
  sha256 '6d142672962e906d530ffc17a361283be014fbe21e663fc451a7948b00676981'

  url "https://www.rubitrack.com/files/rubiTrack-#{version}.dmg"
  appcast "https://www.rubitrack.com/autoupdate/sparkle#{version.major}.xml"
  name 'rubiTrack'
  homepage 'https://www.rubitrack.com/'

  depends_on macos: '>= :sierra'

  app "rubiTrack #{version.major} Pro.app"
end
