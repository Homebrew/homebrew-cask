cask 'openpht' do
  version '1.7.1.137-b604995c'
  sha256 '9bb7a0c268a337a74f742877aa39cca8174cd44eb6760d0d826b160224b319ec'

  url "https://github.com/RasPlex/OpenPHT/releases/download/v#{version}/OpenPHT-#{version}-macosx-x86_64.zip"
  appcast 'https://github.com/RasPlex/OpenPHT/releases.atom',
          checkpoint: '3ffa1bafac5989a356d7068beaa78589151adc2e16132c35c4f2760bdc6d7c5a'
  name 'OpenPHT'
  homepage 'https://github.com/RasPlex/OpenPHT'

  app 'OpenPHT.app'
end
