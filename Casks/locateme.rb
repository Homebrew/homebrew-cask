cask 'locateme' do
  version '0.2.1'
  sha256 '137016e6c1a847bbe756d8ed294b40f1d26c1cb08869940e30282e933e5aeecd'

  url "http://downloads.sourceforge.net/project/iharder/locateme/LocateMe-v#{version}.zip"
  name 'LocateMe'
  homepage 'http://iharder.sourceforge.net/current/macosx/locateme/'

  binary 'LocateMe'
end
