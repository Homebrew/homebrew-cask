cask 'lando' do
  version '3.0.0-beta.40'
  sha256 'ae6392e624877c9d555b7424f2929a7f9a4e1ade7b026e8ccb19f210694d7582'

  # github.com/lando/lando was verified as official when first introduced to the cask
  url "https://github.com/lando/lando/releases/download/v#{version}/lando-v#{version}.dmg"
  appcast 'https://github.com/lando/lando/releases.atom',
          checkpoint: 'cd57be0f6be4ff114de8b4049b3db62e2ccd6fabd344429d090dd59be446134e'
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
