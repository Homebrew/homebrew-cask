cask 'pharo-launcher' do
  version :latest
  sha256 :no_check

  # ci.inria.fr/pharo/view/Launcher/job/Launcher-Mac was verified as official when first introduced to the cask
  url 'https://ci.inria.fr/pharo/view/Launcher/job/Launcher-Mac/lastSuccessfulBuild/artifact/latest.dmg'
  name 'Pharo Launcher'
  homepage 'http://smalltalkhub.com/#!/~Pharo/PharoLauncher/'

  # Renamed to avoid conflict with pharo.
  app 'Pharo.app', target: 'Pharo Launcher.app'
end
