cask 'kate' do
  version '18.12.0-345'
  sha256 '2c3ddb31f03c42b8bf85baae26e74db8b5743279a72b3078da6c557ac5514f93'

  # binary-factory.kde.org/view/MacOS/job/Kate_Release_macos was verified as official when first introduced to the cask
  url "https://binary-factory.kde.org/view/MacOS/job/Kate_Release_macos/lastSuccessfulBuild/artifact/kate-#{version}-macos-64-clang.dmg"
  appcast 'https://binary-factory.kde.org/view/MacOS/job/Kate_Release_macos/rssAll'
  name 'Kate'
  homepage 'https://kate-editor.org/'

  app 'kate.app'
end
