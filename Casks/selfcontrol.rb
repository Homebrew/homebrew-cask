class Selfcontrol < Cask
  version '2.0'
  sha256 '8148b29d5c5bca08149b15ae1841bac87619624f8fbdebb071daa71ccb5a8efa'

  url "http://downloads.selfcontrolapp.com/SelfControl-#{version}.zip"
  appcast 'http://selfcontrolapp.com/SelfControlAppcast.xml',
          :sha256 => '05d48c097c072ffd92d4d938b6984c8a09f446a556dc30acf25e3896cc3e0826'
  homepage 'http://selfcontrolapp.com/'
  license :unknown

  app 'SelfControl.app'
  zap :delete => '~/Library/Preferences/org.eyebeam.SelfControl.plist'
end
