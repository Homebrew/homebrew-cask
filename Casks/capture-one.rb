cask 'capture-one' do
  version '10.0.2'
  sha256 'ffd01fa5ee4a5ddfdcf74db0156f6ea8ea983c6b7b382d008b6da5204cdebe2b'

  url "http://downloads.phaseone.com/9c7cb7b7-1525-4cfc-86a8-7d8f5a51f38e/International/CaptureOne.Mac.#{version}.dmg"
  name 'Capture One'
  homepage 'https://www.phaseone.com/en/Products/Software/Capture-One-Pro/Whats-new.aspx'

  app "Capture One #{version.major}.app"
end
