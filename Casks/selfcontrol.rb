cask :v1 => 'selfcontrol' do
  if MacOS.release <= :snow_leopard
    version '1.5.1'
    sha256 'd3823a1e9ba0b47dc2cb39c93cd51837c2dafc7d5a5a564825f4a440fd2ab9ad'
  else
    version '2.0.2'
    sha256 'cd1fb7bd5524d81e784ad67f8639cfb836261f07d7e6db75458a398b17f9a1f9'
  end

  url "http://downloads.selfcontrolapp.com/SelfControl-#{version}.zip"
  appcast 'https://selfcontrolapp.com/SelfControlAppcast.xml',
          :sha256 => 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855'
  name 'SelfControl'
  homepage 'https://selfcontrolapp.com/'
  license :gpl

  app 'SelfControl.app'

  zap :delete => '~/Library/Preferences/org.eyebeam.SelfControl.plist'
end
