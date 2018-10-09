cask 'recents' do
  version '2.0.0,2868'
  sha256 '3d06bd577120758e4649916533eff3a7bb1a9bee2e6fc768416d5eb9439e1273'

  # rink.hockeyapp.net/api/2/apps/74f5ee9ebf2d4be3b92a3e8766433b8b was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/74f5ee9ebf2d4be3b92a3e8766433b8b/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/74f5ee9ebf2d4be3b92a3e8766433b8b'
  name 'Recents'
  homepage 'http://recentsapp.com/'

  app 'Recents.app'
end
