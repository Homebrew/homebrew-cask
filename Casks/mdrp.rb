cask 'mdrp' do
  version '9.0.1'
  sha256 '2bf6eae89b4299e9fa6062e83b7a3ee46434aaf73f3ed4f39f0f1f1b75acfa37'

  url "https://www.macdvdripperpro.com/MDRP_v#{version.no_dots}.zip"
  appcast "https://www.macdvdripperpro.com/mdrp_sparkle#{version.major}.xml"
  name 'Mac DVDRipper Pro'
  homepage 'https://www.macdvdripperpro.com/'

  app 'MDRP.app'
end
