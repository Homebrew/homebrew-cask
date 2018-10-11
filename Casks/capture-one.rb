cask 'capture-one' do
  version '11.3.0'
  sha256 'ab70176355cd13c61e86f78b1f5e269185504657728b2dfbdd9f27b2eb9b22a6'

  url "http://downloads.phaseone.com/73bc2bdb-c7e0-45ec-bffc-3b2ec2adeb03/English/CaptureOne.Mac.#{version}.dmg"
  name 'Capture One'
  homepage 'https://www.phaseone.com/en/Products/Software/Capture-One-Pro/Whats-new.aspx'

  app "Capture One #{version.major}.app"
end
