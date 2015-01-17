cask :v1 => 'dvdstyler' do
  version '2.8.1'
  sha256 '4e13bdfe72adb4aee5db73cddf461e3345ed1bbeb7b763b4a6ec0a721c143e4a'

  url "http://downloads.sourceforge.net/sourceforge/dvdstyler/DVDStyler-#{version}-MacOSX.dmg"
  name 'DVDStyler'
  homepage 'http://dvdstyler.org'
  license :oss

  app 'DVDStyler.app'
end
