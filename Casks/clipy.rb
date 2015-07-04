cask :v1 => 'clipy' do
  version '1.0.0'
  sha256 '3bd648fb8fcd9a4fec00dd9c0f9de81840635203bee08444303e96db89aadb64'

  url "https://github.com/Clipy/Clipy/releases/download/#{version}/Clipy_#{version}.dmg"
  appcast 'https://github.com/Clipy/Clipy/releases.atom'
  name 'Clipy'
  homepage 'http://clipy-app.com/'
  license :mit

  app 'Clipy.app'
end
