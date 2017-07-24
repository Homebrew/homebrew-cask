cask 'pharo-launcher' do
  version '0.2.13'
  sha256 '96959ac605a23ec9566a7ddf4c7f5f303cb46f2dd002b1013f90942cb29054f7'

  # ci.inria.fr/pharo/view/Launcher/job/Publish-Launcher-stable-Mac was verified as official when first introduced to the cask
  url "https://ci.inria.fr/pharo/view/Launcher/job/Publish-Launcher-stable-Mac/lastSuccessfulBuild/artifact/Pharo_#{version}.dmg"
  name 'Pharo Launcher'
  homepage 'https://github.com/pharo-project/pharo-launcher'

  # Renamed to avoid conflict with pharo.
  app 'Pharo.app', target: 'Pharo Launcher.app'
end
