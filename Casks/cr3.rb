cask 'cr3' do
  version '3.0.56,10'
  sha256 '0b6ba965635e9f9af745421b2579c8c14d8e3931a77ebbb1afc427cd537c18f3'

  url "https://downloads.sourceforge.net/crengine/cr3.#{version.minor}.#{version.patch}-#{version.after_comma}.dmg"
  appcast 'https://sourceforge.net/projects/crengine/rss?path=/CoolReader3'
  name 'Cool Reader'
  homepage 'https://sourceforge.net/projects/crengine/'

  app 'cr3.app'

  zap trash: [
               '~/.cr3',
               '~/Library/Saved Application State/org.coolreader.cr3.savedState',
               '/Applications/cr3.ini',
             ]
end
