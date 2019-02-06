cask 'capture-one' do
  version '12.0.1'
  sha256 '84a7f38e3285edf6f3b723122c3612f3bbcc5554f1feb9aacde65d2964d76288'

  url "http://downloads.phaseone.com/d972230a-e941-47ca-a751-35f57a3f2d94/International/CaptureOne.Mac.#{version}.dmg"
  name 'Capture One'
  homepage 'https://www.phaseone.com/en/Capture-One.aspx'

  depends_on macos: '>= :sierra'

  app "Capture One #{version.major}.app"
end
