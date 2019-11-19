cask 'freedom' do
  version '2.2.2'
  sha256 '418563e6a43ae7415452b3b6ed37ea243c10c559a3fce93cfcaf0ea2e206193c'

  url "https://cdn.freedom.to/installers/updates/mac/#{version}/Freedom.zip"
  appcast 'https://cdn.freedom.to/installers/updates/mac/Appcast.xml'
  name 'Freedom'
  homepage 'https://freedom.to/'

  auto_updates true

  app 'Freedom.app'
end
