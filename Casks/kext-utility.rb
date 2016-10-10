cask 'kext-utility' do
  version '2.6.4'
  sha256 '45d8705872adaba89137a99465ac4d423dc70e6b297515ced03f66f05deb19e8'

  url "http://cvad-mac.narod.ru/files/Kext_Utility.app.v#{version}.zip"
  name 'Kext Utility'
  homepage 'http://cvad-mac.narod.ru/index/0-4'

  app 'Kext Utility.app'
end
