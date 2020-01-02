cask 'capture-one' do
  version '13.0.1.19,20.0.1'
  sha256 'a880db69e7032a5878f95fc4003cce3d94d366bc93cfae91a0fed2deeadfe0c4'

  # phaseone.com/a9562498-f874-404e-842d-9f5cc8a05efd/International was verified as official when first introduced to the cask
  url "https://downloads.phaseone.com/a9562498-f874-404e-842d-9f5cc8a05efd/International/CaptureOne#{version.after_comma.major}.Mac.#{version.after_comma}.dmg"
  appcast "https://cormws.phaseone.com/corm.asmx/GetNewSoftwareVersion?Platform=Mac&Version=#{version.after_comma.major}"
  name 'Capture One'
  homepage 'https://www.captureone.com/en/'

  depends_on macos: '>= :high_sierra'

  app "Capture One #{version.after_comma.major}.app"
end
