cask 'kate' do
  version '18.12.1-357'
  sha256 '9c40f27caf8eaae75b99d92b071f470ee2cd65900856d1bfa3267cbad2451b6d'

  # binary-factory.kde.org/view/MacOS/job/Kate_Release_macos was verified as official when first introduced to the cask
  url "https://binary-factory.kde.org/view/MacOS/job/Kate_Release_macos/lastSuccessfulBuild/artifact/kate-#{version}-macos-64-clang.dmg"
  appcast 'https://binary-factory.kde.org/view/MacOS/job/Kate_Release_macos/rssAll'
  name 'Kate'
  homepage 'https://kate-editor.org/'

  app 'kate.app'
end
