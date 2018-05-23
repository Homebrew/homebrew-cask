cask 'noti' do
  version '0.3.1'
  sha256 '7ce31dfc0a177bc21591d18b7f3b96f72f7105c132641e7d3a296ec02eaf23db'

  # github.com/jariz/Noti was verified as official when first introduced to the cask
  url "https://github.com/jariz/Noti/releases/download/#{version}/Noti.dmg"
  appcast 'https://github.com/jariz/Noti/releases.atom',
          checkpoint: '6914874cca39d8d5a1957a7481b562d5599d9688171d54aa373a9765a2c17732'
  name 'Noti'
  homepage 'https://noti.center/'

  auto_updates true

  app 'Noti.app'
end
