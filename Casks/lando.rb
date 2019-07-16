cask 'lando' do
  version '3.0.0-rc.17'
  sha256 'cdbed0fb7b3e51ab77a646e30863c293318a3349e21618d52bf18d885a4e45e1'

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
