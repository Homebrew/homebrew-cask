cask 'airtame' do
  version '2.0.4'
  sha256 '6797ef61cda30e832c5fecd874dd640fbe50ffd82ba4faf5d7b18511adae1dda'

  url "https://us-1-downloads.airtame.com/application/ga/osx_x86/releases/airtame-application_#{version}.dmg"
  name 'Airtame'
  homepage 'https://airtame.com'

  auto_updates 'True'

  app 'Airtame.app'
end
