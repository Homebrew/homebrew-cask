cask 'kext-utility' do
  version '2.6.6'
  sha256 '3b98c3ad9c15e09c076df55d751f0e1ee10a6be853fc374674698f72557ddc79'

  url "https://cvad-mac.narod.ru/files/Kext_Utility.app.v#{version}.zip"
  appcast 'https://cvad-mac.narod.ru/index/0-4'
  name 'Kext Utility'
  homepage 'https://cvad-mac.narod.ru/index/0-4'

  app 'Kext Utility.app'
end
