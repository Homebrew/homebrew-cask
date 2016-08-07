cask 'peakhour' do
  version '3.1.6'
  sha256 '56fe7d13e53bece3de9e0591ffa6e1e77126f6b7262fb8526a6f3fca21cf1958'

  url "https://updates.peakhourapp.com/releases/PeakHour%20#{version}.zip"
  appcast 'https://updates.peakhourapp.com/PeakHourAppcast.xml',
          checkpoint: '2da30a27a0c618f7e4023bd71ffd0d3984f245ab598b66b55162aaa9c94d99fe'
  name 'PeakHour'
  homepage 'https://www.peakhourapp.com'
  license :commercial

  app "PeakHour #{version.major}.app"
end
