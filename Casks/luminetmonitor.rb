cask 'luminetmonitor' do
  version '2.2.1'
  sha256 '21ade79c58c310fa84e32c1d613bbb76cc3a92670c20fb8b6501f4290a8381ed'

  url "http://software.luminex.be/download.php?file=mac/LumiNetMonitor/#{version}LumiNetMonitor.app.7z"
  name 'LumiNet Monitor'
  homepage 'https://www.luminex.be/'

  app 'LumiNetMonitor.app'
end
