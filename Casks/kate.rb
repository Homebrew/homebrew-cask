cask 'kate' do
  version '18.08.3-307'
  sha256 '1b589f7edbd7c0c8b06107dc9d44ad1ecadf8b708c4a8a040faf5c0c58d7288b'

  # binary-factory.kde.org/view/MacOS/job/Kate_Release_macos was verified as official when first introduced to the cask
  url "https://binary-factory.kde.org/view/MacOS/job/Kate_Release_macos/lastSuccessfulBuild/artifact/kate-#{version}-macos-64-clang.dmg"
  appcast 'https://binary-factory.kde.org/view/MacOS/job/Kate_Release_macos/rssAll'
  name 'Kate'
  homepage 'https://kate-editor.org/'

  app 'kate.app'
end
