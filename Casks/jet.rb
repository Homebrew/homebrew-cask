cask 'jet' do
  version '1.19.24'
  sha256 '718705eab04e0f355205e7aaa4f5f1a6d7aa5a2dcb7dfcac87f33690297a5fc6'

  # s3.amazonaws.com/codeship-jet-releases was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/codeship-jet-releases/#{version}/jet-darwin_amd64_#{version}.tar.gz"
  name 'Codeship Jet'
  homepage 'https://documentation.codeship.com/pro/builds-and-configuration/cli/'

  binary 'jet'
end
