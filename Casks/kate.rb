cask 'kate' do
  version '18.08.3-306'
  sha256 'bea0ac909f8a8eb3d2d16c7d7b7d5efa1bfc30877c485dbbd4ae4785afea8f1c'

  # binary-factory.kde.org was verified as official when first introduced to the cask
  url "https://binary-factory.kde.org/job/Kate_Release_macos/#{version.sub(%r{(.*?\-)}, '')}/artifact/kate-#{version}-macos-64-clang.dmg"
  appcast 'https://binary-factory.kde.org/job/Kate_Release_macos/rssAll'
  name 'kate'
  homepage 'https://kate-editor.org/'

  app 'kate.app'
end
