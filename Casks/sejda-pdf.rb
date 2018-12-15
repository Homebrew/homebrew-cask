cask 'sejda-pdf' do
  version '5.2.0'
  sha256 '3e8ca537c05d16b105aa3828a229deebc2ba370cde86cec40ceca85c9f46ff92'

  # sejda-cdn.com was verified as official when first introduced to the cask
  url "https://sejda-cdn.com/downloads/sejda-desktop_#{version}.dmg"
  name 'Sejda PDF Desktop'
  homepage 'https://www.sejda.com/desktop'

  app 'Sejda PDF Desktop.app'
end
