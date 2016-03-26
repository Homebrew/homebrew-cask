cask 'capture-one' do
  version '9.1.0'
  sha256 '232cfdef4a096f3d97a7576198ebd1b4f320c2e81104b06cc2fccadf9394162d'

  url 'http://downloads.phaseone.com/International/CaptureOne.Mac.9.1.0.dmg'
  name 'Capture One 9'
  homepage 'https://www.phaseone.com/en/Products/Software/Capture-One-Pro/dot-release.aspx'
  license :freemium

  app 'Capture One 9.app'
end
