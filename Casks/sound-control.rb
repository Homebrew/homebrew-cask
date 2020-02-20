cask 'sound-control' do
  version '2.4.1,5156'
  sha256 '8cd697bc1879eb36fb2e6dde5e64e06b927adea52f2c664d839864c129a0bffa'

  # staticz.net was verified as official when first introduced to the cask
  url "https://staticz.com/download/#{version.after_comma}/"
  appcast 'http://staticz.net/updates/soundcontrol.rss'
  name 'Sound Control'
  homepage 'https://staticz.com/soundcontrol/'

  auto_updates true

  app 'Sound Control.app'

  uninstall launchctl: 'com.staticz.soundcontrol.*',
            quit:      'com.staticz.SoundControl'
end
