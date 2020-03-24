cask 'mdrp' do
  version '8.0.6'
  sha256 'e24a79bb47a0790c13c27948f9f0fc4730115347d52abf39aec5e4ccf6ec559a'

  url "https://www.macdvdripperpro.com/MDRP_v#{version.no_dots}.zip"
  appcast "https://www.macdvdripperpro.com/mdrp_sparkle#{version.major}.xml"
  name 'Mac DVDRipper Pro'
  homepage 'https://www.macdvdripperpro.com/'

  app 'MDRP.app'
end
