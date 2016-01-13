cask 'ideskcal' do
  version '2.6.5'
  sha256 'b42acab35ad8d3e1ffa7bb95adde768515d5a924b18b4768d70c0442e6477285'

  url "https://hashbangind.com/files/iDeskCal-#{version}.zip"
  appcast 'https://hashbangind.com/appcasts/iDeskCal-profileInfo.php',
          :sha256 => '66a208ae0c59f02ef236030d7fef7bf770b636abce27806525860817921e5ebf'
  name 'iDeskCal'
  homepage 'http://www.hashbangind.com'
  license :commercial

  app 'iDeskCal.app'
end
