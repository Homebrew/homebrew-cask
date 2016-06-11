cask 'peakhour' do
  version '3.1.5'
  sha256 '619a550162a76111b5f7023d7a8f905bd234193530d599b4a9d47a4e2ebeb6de'

  url "https://updates.peakhourapp.com/releases/PeakHour%20#{version}.zip"
  appcast 'https://updates.peakhourapp.com/PeakHourAppcast.xml',
          checkpoint: '25ab3c1e8f3bf95ffd15d0d5b5d32c082ff782ec4c0dfb20325d46af771dd8c2'
  name 'PeakHour'
  homepage 'https://www.peakhourapp.com'
  license :commercial

  app "PeakHour #{version.to_i}.app"
end
