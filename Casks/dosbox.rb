cask 'dosbox' do
  version '0.74-2'
  sha256 '582d17a29666cc36f9a2bb3804bcba2fadf4d26712ce801b7fbcf3c02f659348'

  # sourceforge.net/dosbox was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/dosbox/dosbox/#{version}/DOSBox-#{version}_Universal.dmg"
  appcast 'https://sourceforge.net/projects/dosbox/rss?path=/dosbox'
  name 'DOSBox'
  homepage 'https://www.dosbox.com/'

  app 'DOSBox.app'

  zap trash: '~/Library/Preferences/DOSBox*'
end
