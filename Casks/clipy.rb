cask :v1 => 'clipy' do
  version '1.0.1'
  sha256 '8ec7ab4e1a04034aa612f014579c7e73d2cbca5715fe3d057daaa84960a291eb'

  url "https://github.com/Clipy/Clipy/releases/download/#{version}/Clipy_#{version}.dmg"
  appcast 'https://github.com/Clipy/Clipy/releases.atom'
  name 'Clipy'
  homepage 'http://clipy-app.com/'
  license :mit

  app 'Clipy.app'
end
