cask 'capture-one' do
  version '11.0.1'
  sha256 'f87c9b1e0a72901464732fca68f06e46c1fe21878d31a99a671b42b7904573e8'

  url "http://downloads.phaseone.com/73bc2bdb-c7e0-45ec-bffc-3b2ec2adeb03/International/CaptureOne.Mac.#{version}.dmg"
  name 'Capture One'
  homepage 'https://www.phaseone.com/en/Products/Software/Capture-One-Pro/Whats-new.aspx'

  app "Capture One #{version.major}.app"
end
