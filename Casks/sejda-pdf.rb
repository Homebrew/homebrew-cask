cask 'sejda-pdf' do
  version '6.0.3'
  sha256 '09c980d49d13754defe83c3728ad681c89ae045cdd0a294dadcd1d882fc3ae64'

  # sejda-cdn.com was verified as official when first introduced to the cask
  url "https://sejda-cdn.com/downloads/sejda-desktop_#{version}.dmg"
  appcast 'https://www.sejda.com/desktop'
  name 'Sejda PDF Desktop'
  homepage 'https://www.sejda.com/desktop'

  app 'Sejda PDF Desktop.app'
end
