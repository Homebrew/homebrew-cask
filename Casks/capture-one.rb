cask 'capture-one' do
  version '12.0.2'
  sha256 'f474f86a69502eb25ab25d9fde62bc1f0058f06f95867fd4e0e1049e90d76b9b'

  url "https://downloads.phaseone.com/d972230a-e941-47ca-a751-35f57a3f2d94/International/CaptureOne.Mac.#{version}.dmg"
  name 'Capture One'
  homepage 'https://www.phaseone.com/en/Capture-One.aspx'

  depends_on macos: '>= :sierra'

  app "Capture One #{version.major}.app"
end
