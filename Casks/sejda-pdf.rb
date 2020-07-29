cask 'sejda-pdf' do
  version '7.0.3'
  sha256 '13a7a66a78758e9046ce458c4bb7c3c818b704fd187464306c915446938834e3'

  # sejda-cdn.com/ was verified as official when first introduced to the cask
  url "https://sejda-cdn.com/downloads/sejda-desktop_#{version}.dmg"
  appcast 'https://www.sejda.com/desktop'
  name 'Sejda PDF Desktop'
  homepage 'https://www.sejda.com/desktop'

  app 'Sejda PDF Desktop.app'
end
