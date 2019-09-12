cask 'capture-one' do
  version '12.1.3'
  sha256 '120174eeef6fcdc90d8d1cccdcd7b03203febb622b4743c3b5776e5698eb4333'

  url "https://downloads.phaseone.com/d972230a-e941-47ca-a751-35f57a3f2d94/International/CaptureOne.Mac.#{version}.dmg"
  appcast "https://cormws.phaseone.com/corm.asmx/GetNewSoftwareVersion?Platform=Mac&Version=#{version}"
  name 'Capture One'
  homepage 'https://www.phaseone.com/en/Capture-One.aspx'

  depends_on macos: '>= :sierra'

  app "Capture One #{version.major}.app"
end
