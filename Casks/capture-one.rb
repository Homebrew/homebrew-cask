cask 'capture-one' do
  version '12.1.0'
  sha256 '57bd9a4bd598869f282ccb79a93e401912adbfd69a33560a5a6cc3ed4910e812'

  url "https://downloads.phaseone.com/d972230a-e941-47ca-a751-35f57a3f2d94/International/CaptureOne.Mac.#{version}.dmg"
  name 'Capture One'
  homepage 'https://www.phaseone.com/en/Capture-One.aspx'

  depends_on macos: '>= :sierra'

  app "Capture One #{version.major}.app"
end
