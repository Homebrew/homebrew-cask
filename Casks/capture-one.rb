cask 'capture-one' do
  version '10.1.2'
  sha256 'fc4760f9e5e0470d9e851995cb36180ffc956607735fff36e0b73c737a536d90'

  url "http://downloads.phaseone.com/9c7cb7b7-1525-4cfc-86a8-7d8f5a51f38e/International/CaptureOne.Mac.#{version}.dmg"
  name 'Capture One'
  homepage 'https://www.phaseone.com/en/Products/Software/Capture-One-Pro/Whats-new.aspx'

  app "Capture One #{version.major}.app"
end
