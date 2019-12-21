cask 'sejda-pdf' do
  version '6.0.1'
  sha256 'cb79c0fda1c3afe257f9624f44e2aabfbf3c25022cd284f5dd5f62a24a599852'

  # sejda-cdn.com was verified as official when first introduced to the cask
  url "https://sejda-cdn.com/downloads/sejda-desktop_#{version}.dmg"
  appcast 'https://www.sejda.com/desktop'
  name 'Sejda PDF Desktop'
  homepage 'https://www.sejda.com/desktop'

  app 'Sejda PDF Desktop.app'
end
