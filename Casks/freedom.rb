cask 'freedom' do
  version '2.0.5'
  sha256 '0715908df326be50d159afb59a276eeaa515f53e8d712c79bbebbe81705b13df'

  url "https://cdn.freedom.to/installers/updates/mac/#{version}/Freedom.zip"
  appcast 'https://cdn.freedom.to/installers/updates/mac/Appcast.xml'
  name 'Freedom'
  homepage 'https://freedom.to/'

  auto_updates true
  depends_on macos: '>= :mavericks'

  app 'Freedom.app'
end
