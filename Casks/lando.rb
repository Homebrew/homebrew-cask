cask 'lando' do
  version '3.0.0-beta.22'
  sha256 'f83a2416d7f363024d56f1e04845f5f9e84df18f411a24552469b28de1fc52e0'

  # github.com/lando/lando was verified as official when first introduced to the cask
  url "https://github.com/lando/lando/releases/download/v#{version}/lando-v#{version}.dmg"
  appcast 'https://github.com/lando/lando/releases.atom',
          checkpoint: '0b8ffe24f170735e6f388c95ae0754593a8ec254f7bf5a7a8c8e8946c9b00faf'
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
