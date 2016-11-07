cask 'black-screen' do
  version '0.2.76'
  sha256 'c9e377016c06bb792e31a716721b09904606bbadba47f9f6960f957d20eaa35d'

  url "https://github.com/shockone/black-screen/releases/download/v#{version}/black-screen-#{version}-mac.zip"
  appcast 'https://github.com/shockone/black-screen/releases.atom',
          checkpoint: 'f529d6658e9d705e5d94a0aa356eda17035b9cfea7d1e951152d4581e49ba56d'
  name 'Black Screen'
  homepage 'https://github.com/shockone/black-screen'

  app 'Black Screen.app'

  zap delete: '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.github.shockone.black-screen.sfl'
end
