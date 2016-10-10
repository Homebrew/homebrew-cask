cask 'googleappengine' do
  version '1.9.40'
  sha256 '24705f40ad689e6bf91c269489ef3aebfc0f41fe6de17b41cb66191591db3fac'

  # storage.googleapis.com/appengine-sdks was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/appengine-sdks/featured/GoogleAppEngineLauncher-#{version}.dmg"
  appcast 'https://storage.googleapis.com/appengine-sdks',
          checkpoint: '7918888a5ed9a499f939d5f9e2f433f768f12959dae32d0a1e174a4592b2876a'
  name 'Google App Engine'
  homepage 'https://developers.google.com/appengine/'

  app 'GoogleAppEngineLauncher.app'
end
