cask 'sejda-pdf' do
  version '5.3.6'
  sha256 '9a480d37fc55f9673bf5e9e204f756bac02c097a087399b47f70cf151a3eb031'

  # sejda-cdn.com was verified as official when first introduced to the cask
  url "https://sejda-cdn.com/downloads/sejda-desktop_#{version}.dmg"
  appcast 'https://www.sejda.com/desktop'
  name 'Sejda PDF Desktop'
  homepage 'https://www.sejda.com/desktop'

  app 'Sejda PDF Desktop.app'
end
