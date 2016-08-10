cask 'airtame' do
  version '2.0.3'
  sha256 '457ebb3f975a134a16a5504a5165fe864a0e29cdcb3882fba6f8b5f0987b47b1'

  url "https://us-1-downloads.airtame.com/application/ga/osx_x86/releases/airtame-application_#{version}.dmg"
  name 'Airtame'
  homepage 'https://airtame.com'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  auto_updates 'True'

  app 'Airtame.app'
end
