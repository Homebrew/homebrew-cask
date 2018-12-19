cask 'coolreader' do
  version '3.0.56,10'
  sha256 '0b6ba965635e9f9af745421b2579c8c14d8e3931a77ebbb1afc427cd537c18f3'

  # dl.devmate.com/com.macpaw.site.Gemini was verified as official when first introduced to the cask
  url "https://sourceforge.net/projects/crengine/files/CoolReader3/cr#{version.major}-#{version.major}.#{version.minor}.#{version.patch}/cr#{version.major}.#{version.minor}.#{version.patch}-#{version.after_comma}.dmg/download"
  name 'Cool Reader'
  homepage 'https://sourceforge.net/projects/crengine/'

  app "cr#{version.major}.app"

  zap trash: [
               '~/.cr3',
               '~/Library/Saved Application State/org.coolreader.cr3.savedState',
               '/Applications/cr3.ini'
             ]
end
