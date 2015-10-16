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
          :sha256 => '05d48c097c072ffd92d4d938b6984c8a09f446a556dc30acf25e3896cc3e0826'
  name 'SelfControl'
  homepage 'https://selfcontrolapp.com/'
  license :gpl

  app 'SelfControl.app'

  zap :delete => '~/Library/Preferences/org.eyebeam.SelfControl.plist'
end
