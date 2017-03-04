cask 'scout' do
  version '2.12.12'
  sha256 '33a59da631d45fe4abc4b2525cf8148c722eb3d87787a94c0eeee7d81be9b4b7'

  # github.com/scout-app/scout-app was verified as official when first introduced to the cask
  url "https://github.com/scout-app/scout-app/releases/download/v#{version}/OSX_Scout-App_#{version}.zip"
  appcast 'https://github.com/scout-app/scout-app/releases.atom',
          checkpoint: '75ad564c48c266066eab01ef7f06180e065bfd9ac0eb92261579bb0d9cd7b833'
  name 'Scout-App'
  homepage 'http://scout-app.io/'

  app 'Scout-App.app'
end
