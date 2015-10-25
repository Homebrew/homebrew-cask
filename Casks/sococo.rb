cask :v1 => 'sococo' do
  version '3.5.17_14261'
  sha256 '77d453cdc4bde06344c11bf48ab17604886cf4f68ae7270d12b9158327d1dea0'

  url "http://download.sococo.com/release/Sococo_#{version.gsub('.','_')}.dmg"
  name 'Sococo'
  homepage 'https://www.sococo.com/'
  license :freemium

  app 'Sococo.app'

  depends_on :macos => '>= :lion'
end
