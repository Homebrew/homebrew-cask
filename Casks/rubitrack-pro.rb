cask 'rubitrack-pro' do
  version '4.4.8'
  sha256 '3088c89372b296518c3441421df71e8a9028cd9ebc99254720aa5380e78862fa'

  url "https://www.rubitrack.com/files/rubiTrack-#{version}_u.dmg"
  appcast "https://www.rubitrack.com/autoupdate/sparkle#{version.major}.xml",
          checkpoint: '1702cd16a2e5eefac0b6a377c7b108ddd96345c544c3a633438aabdf0660704a'
  name 'rubiTrack'
  homepage 'https://www.rubitrack.com/'

  depends_on macos: '>= :yosemite'

  app "rubiTrack #{version.major} Pro.app"
end
