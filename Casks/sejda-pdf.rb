cask 'sejda-pdf' do
  version '6.0.2'
  sha256 '11e2a6523396a53cbde3f6e547b3332dea38a79a0404937b825f73ba24855f89'

  # sejda-cdn.com was verified as official when first introduced to the cask
  url "https://sejda-cdn.com/downloads/sejda-desktop_#{version}.dmg"
  appcast 'https://www.sejda.com/desktop'
  name 'Sejda PDF Desktop'
  homepage 'https://www.sejda.com/desktop'

  app 'Sejda PDF Desktop.app'
end
