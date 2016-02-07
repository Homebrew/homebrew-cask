cask 'peakhour' do
  version '3.1.2'
  sha256 '6c522b5b246d84b0fb1e72f4fc44041c3879ee1bbbbb983c20f793109d29d7c0'

  url "https://updates.peakhourapp.com/releases/PeakHour%20#{version}.zip"
  appcast 'https://updates.peakhourapp.com/PeakHourAppcast.xml',
          checkpoint: '0081474ff479a43336d19bea87fb424d3a79797f812db4fe70622199a73f33a4'
  name 'PeakHour'
  homepage 'https://www.peakhourapp.com'
  license :commercial

  app "PeakHour #{version.to_i}.app"
end
