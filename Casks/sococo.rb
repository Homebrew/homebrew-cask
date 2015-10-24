cask :v1 => 'sococo' do
  version '3.5.17_14261'
  sha256 '313d28d2c660049ee91de84dde35bc5748f4ca5d95ce38cbe68938890b975269'

  url "http://download.sococo.com/release/Sococo_#{version.gsub('.','_')}.dmg"
  name 'Sococo'
  homepage 'https://www.sococo.com/'
  license :freemium

  app 'Sococo.app'

  depends_on :macos => '>= :lion'
end
