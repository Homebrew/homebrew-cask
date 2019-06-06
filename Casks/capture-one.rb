cask 'capture-one' do
  version '12.0.4.21'
  sha256 '4b63fe1c0d72371f66594c80343fe52bed5898d4df331eb81a5b7849031773c6'

  url "https://downloads.phaseone.com/d972230a-e941-47ca-a751-35f57a3f2d94/International/CaptureOne.Mac.#{version}.dmg"
  name 'Capture One'
  homepage 'https://www.phaseone.com/en/Capture-One.aspx'

  depends_on macos: '>= :sierra'

  app "Capture One #{version.major}.app"
end
