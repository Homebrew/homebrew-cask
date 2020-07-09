cask 'sejda-pdf' do
  version '7.0.8'
  sha256 'be8a9a3dc64c4f5bf32f1b7b5442182bcc7b2b151424e730de00bb25562e563b'

  # sejda-cdn.com/ was verified as official when first introduced to the cask
  url "https://sejda-cdn.com/downloads/sejda-desktop_#{version}.dmg"
  appcast 'https://www.sejda.com/desktop'
  name 'Sejda PDF Desktop'
  homepage 'https://www.sejda.com/desktop'

  app 'Sejda PDF Desktop.app'
end
