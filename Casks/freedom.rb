cask 'freedom' do
  version '2.2.6'
  sha256 '7354d0c70da7a3e09c29d3a7fc577d438864fe85e26c1ccb1e613f13c1b5dbe0'

  url "https://cdn.freedom.to/installers/updates/mac/#{version}/Freedom.zip"
  appcast 'https://cdn.freedom.to/installers/updates/mac/Appcast.xml'
  name 'Freedom'
  homepage 'https://freedom.to/'

  auto_updates true

  app 'Freedom.app'
end
