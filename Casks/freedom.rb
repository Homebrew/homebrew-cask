cask 'freedom' do
  version '1.6.11'
  sha256 '099f246790fe08facccccb8e70d725876ed18f1aecc29a83763c91f8692e8995'

  url "https://cdn.freedom.to/installers/updates/mac/#{version}/Freedom.zip"
  appcast 'https://cdn.freedom.to/installers/updates/mac/Appcast.xml'
  name 'Freedom'
  homepage 'https://freedom.to/'

  auto_updates true
  depends_on macos: '>= :mavericks'

  app 'Freedom.app'
end
