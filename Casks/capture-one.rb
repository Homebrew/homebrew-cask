cask 'capture-one' do
  version '10.1.1'
  sha256 'c5c37621481c4f49ff2a91cc3648cadd814d8f6fe95d5633e9d2b506acd936d5'

  url "http://downloads.phaseone.com/9c7cb7b7-1525-4cfc-86a8-7d8f5a51f38e/International/CaptureOne.Mac.#{version}.dmg"
  name 'Capture One'
  homepage 'https://www.phaseone.com/en/Products/Software/Capture-One-Pro/Whats-new.aspx'

  app "Capture One #{version.major}.app"
end
