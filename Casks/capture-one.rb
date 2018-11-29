cask 'capture-one' do
  version '12.0.0'
  sha256 '1a0c1c7da594db0ef2af386dc21f693019a007e086684148699bd22b44ba32b3'

  url "http://downloads.phaseone.com/e7f45a0e-447c-4878-84fb-bca6db2de475/International/CaptureOne.Mac.#{version}.dmg"
  name 'Capture One'
  homepage 'https://www.phaseone.com/en/Products/Software/Capture-One-Pro/Whats-new.aspx'

  app "Capture One #{version.major}.app"
end
