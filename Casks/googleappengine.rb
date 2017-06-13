cask 'googleappengine' do
  version '1.9.53'
  sha256 '33a645d5c7a035bc7cee7026da7eaf731de5b7476a204cb723dcfad8ce257cc4'

  # storage.googleapis.com/appengine-sdks was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/appengine-sdks/featured/GoogleAppEngineLauncher-#{version}.dmg"
  appcast 'https://storage.googleapis.com/appengine-sdks',
          checkpoint: 'd28c77c532d9c7f2111b5a9b49ea2eec55dbf81787537a3491f8d1ede50b41df'
  name 'Google App Engine'
  homepage 'https://cloud.google.com/appengine/'

  app 'GoogleAppEngineLauncher.app'
end
