cask 'cr' do
  version '3.0.56,10'
  sha256 '0b6ba965635e9f9af745421b2579c8c14d8e3931a77ebbb1afc427cd537c18f3'

  url "https://downloads.sourceforge.net/crengine/cr3.#{version.minor}.#{version.patch}-#{version.after_comma}.dmg"
  appcast "https://sourceforge.net/projects/crengine/rss?path=/CoolReader#{version.major}"
  name 'Cool Reader'
  homepage 'https://sourceforge.net/projects/crengine/'

  app "cr#{version}.app"

  zap trash: [
               "~/.cr#{version}",
               "~/Library/Saved Application State/org.coolreader.cr#{version}.savedState",
               "/Applications/cr#{version}.ini",
             ]
end
