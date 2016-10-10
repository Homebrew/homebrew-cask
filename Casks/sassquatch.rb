cask 'sassquatch' do
  version '1.5.0'
  sha256 '9f9c688e473cc8fdffbee38c5d8f876726620a42dacdd6c2996faadfab714612'

  # thoughtbot.github.io/sassquatch was verified as official when first introduced to the cask
  url "https://thoughtbot.github.io/sassquatch/download/v#{version}/Sassquatch.zip"
  appcast 'https://thoughtbot.github.io/sassquatch/feed.xml',
          checkpoint: 'fd579aaf6f76be00a8d491628e99027fa0a4b033eb8d759fda2837c5536b4258'
  name 'Sassquatch'
  homepage 'http://sassquatch.thoughtbot.com'

  app 'Sassquatch/Sassquatch.app'
end
