cask :v1 => 'selfcontrol' do
  version '2.0.2'
  sha256 'cd1fb7bd5524d81e784ad67f8639cfb836261f07d7e6db75458a398b17f9a1f9'

  url "http://downloads.selfcontrolapp.com/SelfControl-#{version}.zip"
  appcast 'http://selfcontrolapp.com/SelfControlAppcast.xml',
          :sha256 => '05d48c097c072ffd92d4d938b6984c8a09f446a556dc30acf25e3896cc3e0826'
  homepage 'http://selfcontrolapp.com/'
  license :unknown

  app 'SelfControl.app'

  zap :delete => '~/Library/Preferences/org.eyebeam.SelfControl.plist'
end
