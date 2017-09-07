cask 'pharo-launcher' do
  version :latest
  sha256 :no_check

  # ci.inria.fr/pharo/view/Launcher/job/Publish-Launcher-stable-Mac was verified as official when first introduced to the cask
  url 'https://ci.inria.fr/pharo/view/Launcher/job/Publish-Launcher-stable-Mac/lastSuccessfulBuild/artifact/latest.dmg'
  name 'Pharo Launcher'
  homepage 'https://github.com/pharo-project/pharo-launcher'

  # Renamed to avoid conflict with pharo.
  app 'Pharo.app', target: 'Pharo Launcher.app'
end
