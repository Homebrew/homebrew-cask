cask 'rubitrack-pro' do
  version '4.4.0'
  sha256 '84c2a1a1ebdcd3956983e031df4326cdc2ce23842ff146d24add3f4001b6f98f'

  url "https://www.rubitrack.com/files/rubiTrack-#{version.major_minor}_u.dmg"
  appcast "https://www.rubitrack.com/autoupdate/sparkle#{version.major}.xml",
          checkpoint: 'eb71ac0f39dc349c880fdb541daa3ab689c0f64bf957cd3136c354f133656986'
  name 'rubiTrack'
  homepage 'https://www.rubitrack.com/'

  depends_on macos: '>= :yosemite'

  app "rubiTrack #{version.major} Pro.app"
end
