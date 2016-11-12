cask 'freesmug-chromium' do
  version '54.0.2840.98'
  sha256 'c22994c46efedea73244a5236cf29bd2341ed932980bf2504ea3756b1d60c5e6'

  # sourceforge.net/osxportableapps was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/osxportableapps/rss?path=/Chromium',
          checkpoint: '50030f6097dfa0407b4a20abf2d1a57df6f468c7a4fc22b7df62fc403d374630'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'

  app 'Chromium.app'
end
