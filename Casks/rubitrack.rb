cask :v1 => 'rubitrack' do
  version '4.1.1'
  sha256 '5d77a72ce0618c9bdeeb0101fc262f8ec5f418557e4ff84e396a0c36c270170a'

  url "http://www.rubitrack.com/files/rubiTrack-#{version}.dmg"
  appcast "http://www.rubitrack.com/autoupdate/sparkle#{version.to_i}.xml",
          :sha256 => '16c64a4ad655c8f8741985a283a8f7169df80d1386ef9318cbf27ff97b5a255e'
  name 'rubiTrack'
  homepage 'http://www.rubitrack.com/'
  license :commercial

  depends_on :macos => '>= :yosemite'
  depends_on :arch => :x86_64

  app "rubiTrack #{version.to_i}.app"
end
