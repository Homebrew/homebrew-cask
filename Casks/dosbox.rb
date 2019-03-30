cask 'dosbox' do
  version '0.74-2'
  sha256 '8bdd3731404db05f9bbe14bb0226ae4e6feb3f9a21a90bbfc9235a7e6e71aa4e'

  # sourceforge.net/dosbox was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/dosbox/dosbox/#{version}/DOSBox-#{version}_Universal.dmg"
  appcast 'https://sourceforge.net/projects/dosbox/rss?path=/dosbox'
  name 'DOSBox'
  homepage 'https://www.dosbox.com/'

  app 'DOSBox.app'

  zap trash: '~/Library/Preferences/DOSBox*'
end
