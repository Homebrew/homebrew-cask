cask 'rubitrack' do
  version '4.3'
  sha256 '80976d5f976ab2691e6f05634b882b361333b3645f83de799101bc552cb5a2da'

  url "http://www.rubitrack.com/files/rubiTrack-#{version}.dmg"
  appcast "http://www.rubitrack.com/autoupdate/sparkle#{version.to_i}.xml",
          checkpoint: 'ad8da582a337762778c2a1459b534f5a455df136dd76380f403cc52c364c9fc3'
  name 'rubiTrack'
  homepage 'http://www.rubitrack.com/'
  license :commercial

  depends_on macos: '>= :yosemite'
  depends_on arch: :x86_64

  app "rubiTrack #{version.to_i}.app"
end
