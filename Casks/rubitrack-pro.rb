cask 'rubitrack-pro' do
  version '5.1'
  sha256 '1b2096f3b6144430d34d7a93180a95cb849852fe51d3301d184f8934e78fd129'

  url "https://www.rubitrack.com/files/rubiTrack-#{version}.dmg"
  appcast "https://www.rubitrack.com/autoupdate/sparkle#{version.major}.xml"
  name 'rubiTrack'
  homepage 'https://www.rubitrack.com/'

  depends_on macos: '>= :yosemite'

  app "rubiTrack #{version.major} Pro.app"
end
