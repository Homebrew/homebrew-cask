cask 'peakhour' do
  version '3.1.7'
  sha256 'd378c088dcb188cac757bfb3ba90b598513986ef333baed2fb4871bf5beede11'

  url "https://updates.peakhourapp.com/releases/PeakHour%20#{version}.zip"
  appcast 'https://updates.peakhourapp.com/PeakHourAppcast.xml',
          checkpoint: 'a161b553f13b5fbdda70bd40f18e6f1766bc7504c42cc8bcadf65952125cc38b'
  name 'PeakHour'
  homepage 'https://www.peakhourapp.com'

  app "PeakHour #{version.major}.app"
end
