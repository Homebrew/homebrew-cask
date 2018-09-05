cask 'rubitrack-pro' do
  version '5.0.7'
  sha256 '57d3f2989e9f0c4ccb97b8d8cf8c758edbdbd67ba233355b8b1bde94cc8701ff'

  url "https://www.rubitrack.com/files/rubiTrack-#{version}.dmg"
  appcast "https://www.rubitrack.com/autoupdate/sparkle#{version.major}.xml"
  name 'rubiTrack'
  homepage 'https://www.rubitrack.com/'

  depends_on macos: '>= :yosemite'

  app "rubiTrack #{version.major} Pro.app"
end
