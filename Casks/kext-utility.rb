cask :v1 => 'kext-utility' do
  version '2.5.6'
  sha256 'ae3533e15b646f6b3cd8b8ad84e0bbd3edcf51661ef573255658546d9fbeda5a'

  url "http://cvad-mac.narod.ru/files/Kext_Utility.app.v#{version}.zip"
  homepage 'http://cvad-mac.narod.ru/index/0-4'
  license :unknown

  app 'Kext Utility.app'
end
