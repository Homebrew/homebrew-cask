cask 'freedom' do
  version '2.2.5'
  sha256 'c10d7a8a95387237a30eeba889f9ee0570efc75da783dd117704c9f1e635929e'

  url "https://cdn.freedom.to/installers/updates/mac/#{version}/Freedom.zip"
  appcast 'https://cdn.freedom.to/installers/updates/mac/Appcast.xml'
  name 'Freedom'
  homepage 'https://freedom.to/'

  auto_updates true

  app 'Freedom.app'
end
