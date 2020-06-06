cask 'lando' do
  version '3.0.5'
  sha256 'f150ae913f17f889712a62f9225e7791139b0d210b8541409a8ed7d2a6841943'

  # github.com/lando/lando/ was verified as official when first introduced to the cask
  url "https://github.com/lando/lando/releases/download/v#{version}/lando-v#{version}.dmg"
  appcast 'https://github.com/lando/lando/releases.atom'
  name 'Lando'
  homepage 'https://docs.lando.dev/'

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
