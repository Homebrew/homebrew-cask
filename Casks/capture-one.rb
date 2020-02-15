cask 'capture-one' do
  version '12.1.5.8'
  sha256 '2eed05d94ab32b41d788b799e20ce28e80a54bdd5cdda66555aef4b6e33b208b'

  url "https://downloads.phaseone.com/d972230a-e941-47ca-a751-35f57a3f2d94/International/CaptureOne12.Mac.#{version}.dmg"
  appcast "https://cormws.phaseone.com/corm.asmx/GetNewSoftwareVersion?Platform=Mac&Version=#{version}"
  name 'Capture One'
  homepage 'https://www.phaseone.com/en/Capture-One.aspx'

  depends_on macos: '>= :sierra'

  app "Capture One #{version.major}.app"
end
