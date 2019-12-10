cask 'capture-one' do
  version '12.1.4'
  sha256 '8bcd5e25336e2766fa11a12dc499393e223f8f17ae3c7f6db413cc89c047265d'

  url "https://downloads.phaseone.com/d972230a-e941-47ca-a751-35f57a3f2d94/International/CaptureOne12.Mac.#{version}.dmg"
  appcast "https://cormws.phaseone.com/corm.asmx/GetNewSoftwareVersion?Platform=Mac&Version=#{version}"
  name 'Capture One'
  homepage 'https://www.phaseone.com/en/Capture-One.aspx'

  depends_on macos: '>= :sierra'

  app "Capture One #{version.major}.app"
end
