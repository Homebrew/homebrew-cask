cask 'capture-one' do
  version '10.2.0'
  sha256 '732a1f430c2c9aa61bf70ecb26f73ca70cedef72e5af57b17cf983a98dca3abb'

  url "http://downloads.phaseone.com/9c7cb7b7-1525-4cfc-86a8-7d8f5a51f38e/International/CaptureOne.Mac.#{version}.dmg"
  name 'Capture One'
  homepage 'https://www.phaseone.com/en/Products/Software/Capture-One-Pro/Whats-new.aspx'

  app "Capture One #{version.major}.app"
end
