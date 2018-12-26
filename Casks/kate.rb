cask 'kate' do
  version '18.08.3-309'
  sha256 '2e298d9c127adcb863c1b8012577478a1c2082f28d6d9c7b8cb207b9092befc3'

  # binary-factory.kde.org/view/MacOS/job/Kate_Release_macos was verified as official when first introduced to the cask
  url "https://binary-factory.kde.org/view/MacOS/job/Kate_Release_macos/lastSuccessfulBuild/artifact/kate-#{version}-macos-64-clang.dmg"
  appcast 'https://binary-factory.kde.org/view/MacOS/job/Kate_Release_macos/rssAll'
  name 'Kate'
  homepage 'https://kate-editor.org/'

  app 'kate.app'
end
