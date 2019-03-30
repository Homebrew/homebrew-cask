cask 'lando' do
  version '3.0.0-rc.14'
  sha256 '771b7ffa7af3cbec5cfea6787a2283eaa352967ab2ddd4b2dce5e4edfc759f97'

  # github.com/lando/lando was verified as official when first introduced to the cask
  url "https://github.com/lando/lando/releases/download/v#{version}/lando-v#{version}.dmg"
  appcast 'https://github.com/lando/lando/releases.atom'
  name 'Lando'
  homepage 'https://docs.devwithlando.io/'

  depends_on cask: 'docker'

  pkg 'LandoInstaller.pkg',
      choices: [
                 {
                   'choiceIdentifier' => 'choiceDocker',
                   'choiceAttribute'  => 'selected',
                   'attributeSetting' => 0,
                 },
                 {
                   'choiceIdentifier' => 'choiceLando',
                   'choiceAttribute'  => 'selected',
                   'attributeSetting' => 1,
                 },
               ]

  uninstall pkgutil: 'io.lando.pkg.lando'
end
