cask :v1 => 'clipy' do
  version '1.0.1'
  sha256 '8ec7ab4e1a04034aa612f014579c7e73d2cbca5715fe3d057daaa84960a291eb'

  url "https://github.com/Clipy/Clipy/releases/download/#{version}/Clipy_#{version}.dmg"
  appcast 'http://clipy-app.com/appcast.xml',
          :sha256 => 'ad739513da663612cdcfe7c9ab58c3d72e958aabeb32873fb50ba4fd6aef702d',
          :format => :sparkle
  name 'Clipy'
  homepage 'http://clipy-app.com/'
  license :mit

  depends_on :macos => '>= :mavericks'

  app 'Clipy.app'
end
