cask 'capture-one' do
  version '11.0.0'
  sha256 'f8ae1f05aadbe446344862f7b2494a8da7994f371dd81bdc6b82d114e0b3e2bc'

  url "http://downloads.phaseone.com/73bc2bdb-c7e0-45ec-bffc-3b2ec2adeb03/International/CaptureOne.Mac.#{version}.dmg"
  name 'Capture One'
  homepage 'https://www.phaseone.com/en/Products/Software/Capture-One-Pro/Whats-new.aspx'

  app "Capture One #{version.major}.app"
end
