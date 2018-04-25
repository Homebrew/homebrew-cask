cask 'capture-one' do
  version '11.1.0'
  sha256 'c5de8adb934eefc3300006e0bf918cd76b5490a7d69d74d04535f6d0093ce27e'

  url "http://downloads.phaseone.com/73bc2bdb-c7e0-45ec-bffc-3b2ec2adeb03/International/CaptureOne.Mac.#{version}.dmg"
  name 'Capture One'
  homepage 'https://www.phaseone.com/en/Products/Software/Capture-One-Pro/Whats-new.aspx'

  app "Capture One #{version.major}.app"
end
