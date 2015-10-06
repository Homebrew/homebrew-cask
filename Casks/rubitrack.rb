cask :v1 => 'rubitrack' do
  version '4.1.1'
  sha256 '5d77a72ce0618c9bdeeb0101fc262f8ec5f418557e4ff84e396a0c36c270170a'

  url "http://www.rubitrack.com/files/rubiTrack-#{version}.dmg"
  appcast "http://www.rubitrack.com/autoupdate/sparkle#{version.to_i}.xml",
          :sha256 => '190cd787d3557dde8a3b85a8f4242422cfad2f434aaf0505490633a22ba71f83'
  name 'rubiTrack'
  homepage 'http://www.rubitrack.com/'
  license :commercial

  depends_on :macos => '>= :yosemite'
  depends_on :arch => :x86_64

  app "rubiTrack #{version.to_i}.app"
end
