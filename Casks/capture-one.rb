cask 'capture-one' do
  version '10.0.2'
  sha256 ''

  url "http://downloads.phaseone.com/9c7cb7b7-1525-4cfc-86a8-7d8f5a51f38e/International/CaptureOne.Mac.#{version}.dmg"
  name 'Capture One'
  homepage 'https://www.phaseone.com/en/Products/Software/Capture-One-Pro/dot-release.aspx'

  app "Capture One #{version.major}.app"
end
