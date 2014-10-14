class Selfcontrol < Cask
  version '2.0'
  sha256 '8148b29d5c5bca08149b15ae1841bac87619624f8fbdebb071daa71ccb5a8efa'

  url "http://downloads.selfcontrolapp.com/SelfControl-#{version}.zip"
  appcast 'http://selfcontrolapp.com/SelfControlAppcast.xml'
  homepage 'http://selfcontrolapp.com/'
  license :unknown

  app 'SelfControl.app'
  zap :delete => '~/Library/Preferences/org.eyebeam.SelfControl.plist'
end
