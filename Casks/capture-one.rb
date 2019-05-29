cask 'capture-one' do
  version '12.0.3.28'
  sha256 '36b679822a772e30a5694fdbd2304fe2b2398eaaae6a39aa4f7bec98a2a1bd9a'

  url "https://downloads.phaseone.com/d972230a-e941-47ca-a751-35f57a3f2d94/International/CaptureOne.Mac.#{version}.dmg"
  name 'Capture One'
  homepage 'https://www.phaseone.com/en/Capture-One.aspx'

  depends_on macos: '>= :sierra'

  app "Capture One #{version.major}.app"
end
