cask 'beyerdynamicvs' do
  version '1.011'
  sha256 '639cfe1fa96026042030455afbaaa518f11522c3ebd86cdbde16e61af7477e15'

  url 'http://www.beyerdynamic.com/fileadmin/editors/downloads/virtualstudio/beyerdynamic-virtual-studio_04-13.zip'
  name 'beyerdynamic Virtual Studio'
  homepage 'https://www.beyerdynamic.com/virtual-studio.html'

  container nested: "mac/beyerdynamicVS_Mac_#{version}_Plugin.dmg"

  audio_unit_plugin 'beyerdynamicVS.component'
  vst_plugin 'beyerdynamicVS.vst'
end
