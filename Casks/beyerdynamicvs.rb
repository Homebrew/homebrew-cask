cask 'beyerdynamicvs' do
  version '1.011'
  sha256 '639cfe1fa96026042030455afbaaa518f11522c3ebd86cdbde16e61af7477e15'

  url 'http://www.beyerdynamic.com/fileadmin/editors/downloads/virtualstudio/beyerdynamic-virtual-studio_04-13.zip'
  appcast 'http://north-america.beyerdynamic.com/virtual-studio.html',
          checkpoint: '3c37813406216306a71e74b02adb8fd0ceb62cb1fa519ac8ac0ccee8545925e9'
  name 'beyerdynamic Virtual Studio'
  homepage 'https://www.beyerdynamic.com/virtual-studio.html'

  container nested: "mac/beyerdynamicVS_Mac_#{version}_Plugin.dmg"

  audio_unit_plugin 'beyerdynamicVS.component'
  vst_plugin 'beyerdynamicVS.vst'
end
