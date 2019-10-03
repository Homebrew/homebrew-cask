cask 'sejda-pdf' do
  version '5.3.7'
  sha256 '699335cd3119a80afb9fb3e10246b28a43d9cc7ed35ec20158064dbd22406409'

  # sejda-cdn.com was verified as official when first introduced to the cask
  url "https://sejda-cdn.com/downloads/sejda-desktop_#{version}.dmg"
  appcast 'https://www.sejda.com/desktop'
  name 'Sejda PDF Desktop'
  homepage 'https://www.sejda.com/desktop'

  app 'Sejda PDF Desktop.app'
end
