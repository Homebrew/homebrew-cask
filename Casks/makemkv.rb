cask :v1 => 'makemkv' do
  version '1.8.14'
  sha256 '099acced826a05d1013c03705d07a344731b3f078d866437f54568f2e3065c53'

  url "http://www.makemkv.com/download/makemkv_v#{version}_osx.dmg"
  homepage 'http://www.makemkv.com/'
  license :unknown

  app 'MakeMKV.app'
end
