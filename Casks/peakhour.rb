cask 'peakhour' do
  version '3.1.4'
  sha256 'f9e9d86a4e5e6122fa87f7dc1e1baa750aac4b7160a243dba117dbe98d213ad6'

  url "https://updates.peakhourapp.com/releases/PeakHour%20#{version}.zip"
  appcast 'https://updates.peakhourapp.com/PeakHourAppcast.xml',
          checkpoint: '842d16e2dcf126c6253b19ce838a9f8c0a90b6052db42b858f2c462899cc9c57'
  name 'PeakHour'
  homepage 'https://www.peakhourapp.com'
  license :commercial

  app "PeakHour #{version.to_i}.app"
end
