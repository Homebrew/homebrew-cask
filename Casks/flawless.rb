cask 'flawless' do
  version '0.7.2,15:1510910181'
  sha256 'a97272d778224066a9dedb97c48128a39437b01fb32acf862b73e8a36e205ae4'

  # dl.devmate.com/com.flawless.app.FlawlessMac was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.flawless.app.FlawlessMac/#{version.after_comma.before_colon}/#{version.after_colon}/FlawlessMac-#{version.after_comma.before_colon}.zip"
  appcast 'http://updates.devmate.com/com.flawless.app.FlawlessMac.xml',
          checkpoint: '549d6cc2b59b07467eb6a80524f879ce3a7197427b05daf632a4014f8df73cfc'
  name 'Flawless App'
  homepage 'https://flawlessapp.io/'

  app 'FlawlessApp.app'
end
