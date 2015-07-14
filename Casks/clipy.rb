cask :v1 => 'clipy' do
  version '1.0.2'
  sha256 'e8f09e7ad766f71e6f780c8a05f5cbdf5c71465c4586263f8b73a8e9ae632d93'

  url "https://github.com/Clipy/Clipy/releases/download/#{version}/Clipy_#{version}.dmg"
  appcast 'http://clipy-app.com/appcast.xml',
          :sha256 => 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855',
          :format => :sparkle
  name 'Clipy'
  homepage 'http://clipy-app.com/'
  license :mit

  depends_on :macos => '>= :mavericks'

  app 'Clipy.app'
end
