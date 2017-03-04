cask 'scout' do
  version '2.12.12'
  sha256 '33a59da631d45fe4abc4b2525cf8148c722eb3d87787a94c0eeee7d81be9b4b7'

  # github.com/scout-app/scout-app was verified as official when first introduced to the cask
  url 'https://github.com/scout-app/scout-app/releases/download/v2.12.12/OSX_Scout-App_2.12.12.zip'
  appcast 'https://github.com/jnordberg/irccloudapp/releases.atom',
          checkpoint: 'ceb58e03536a9cef907651a7455a140fe475b267345b7056e91df650cc5b81b7'
  name 'Scout-App'
  homepage 'http://scout-app.io/'

  app 'Scout-App.app'
end
