cask 'capture-one' do
  version '11.1.1'
  sha256 '671ef824b54db1e8cf146f6d6f9b2301a026c0cda180e515cc0eca588f06413a'

  url "http://downloads.phaseone.com/73bc2bdb-c7e0-45ec-bffc-3b2ec2adeb03/International/CaptureOne.Mac.#{version}.dmg"
  name 'Capture One'
  homepage 'https://www.phaseone.com/en/Products/Software/Capture-One-Pro/Whats-new.aspx'

  app "Capture One #{version.major}.app"
end
