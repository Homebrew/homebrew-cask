cask 'lando' do
  version '3.0.0-beta.39'
  sha256 '2e16a7d3bb3e85572b24493a680522e9714491d69797f6dc28b39e1a8b7891ac'

  # github.com/lando/lando was verified as official when first introduced to the cask
  url "https://github.com/lando/lando/releases/download/v#{version}/lando-v#{version}.dmg"
  appcast 'https://github.com/lando/lando/releases.atom',
          checkpoint: 'd7f41c72f262907c1c5142a75b4dcb065d6b57844b0187f3fa180ac06c511545'
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
