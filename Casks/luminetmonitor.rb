cask 'luminetmonitor' do
  version '2.2.0'
  sha256 'e53bfaa2eb7649da9fe6e4a37d8c707f776e2e84b61d77d2e4e4a99849257756'

  url 'http://www.mrte.jp/files/topics/122_ext_03_0.zip'
  name 'LumiNet Monitor'
  homepage 'http://www.mrte.jp/'

  container nested: "LumiNetMonitor#{version.no_dots}_mac/LumiNetMonitor#{version.no_dots}.dmg"

  app 'LumiNetMonitor.app'
end
