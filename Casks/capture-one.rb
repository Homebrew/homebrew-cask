cask 'capture-one' do
  version '13.0.0.186,20'
  sha256 '776676d221676d0a79e0f7fa5a7a8c7b772e2b84efce8719177a0ae24261e67c'

  url "https://downloads.phaseone.com/374dd05f-e8c7-499d-a703-9a7dca20d5b7/International/CaptureOne#{version.after_comma}.Mac.#{version.after_comma}.0.0.dmg"
  appcast "https://cormws.phaseone.com/corm.asmx/GetNewSoftwareVersion?Platform=Mac&Version=#{version.major}"
  name "Capture One #{version.after_comma}.app"
  homepage 'https://www.phaseone.com/en/Capture-One.aspx'

  depends_on macos: '>= :sierra'

  app "Capture One #{version.after_comma}.app"
end
