cask 'sejda-pdf' do
  version '7.0.5'
  sha256 'c9ad55b7d1b4a2641c3b142cca40bfa2bd40d25bf73600fd187b1830c3d9f604'

  # sejda-cdn.com/ was verified as official when first introduced to the cask
  url "https://sejda-cdn.com/downloads/sejda-desktop_#{version}.dmg"
  appcast 'https://www.sejda.com/desktop'
  name 'Sejda PDF Desktop'
  homepage 'https://www.sejda.com/desktop'

  app 'Sejda PDF Desktop.app'
end
