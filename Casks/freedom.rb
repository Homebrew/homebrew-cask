cask 'freedom' do
  version '2.2.8'
  sha256 'd623c21979d1e3c5632aaf6062019c98b79cb5bb982305daf9dec85022b0f6ac'

  url "https://cdn.freedom.to/installers/updates/mac/#{version}/Freedom.zip"
  appcast 'https://cdn.freedom.to/installers/updates/mac/Appcast.xml'
  name 'Freedom'
  homepage 'https://freedom.to/'

  auto_updates true

  app 'Freedom.app'
end
