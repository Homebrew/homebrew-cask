cask 'freedom' do
  version '2.2.4'
  sha256 '9f32c73526f49ed75de49d7884de473d148eddc5718db37bf2a1a415b354a7fb'

  url "https://cdn.freedom.to/installers/updates/mac/#{version}/Freedom.zip"
  appcast 'https://cdn.freedom.to/installers/updates/mac/Appcast.xml'
  name 'Freedom'
  homepage 'https://freedom.to/'

  auto_updates true

  app 'Freedom.app'
end
