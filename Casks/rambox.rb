cask 'rambox' do
  version '0.4.5'
  sha256 'ff4ba13a48d6282137b323b6a88819da85e397df7359bc00ea2e29a468a5f241'

  # github.com/saenzramiro/rambox was verified as official when first introduced to the cask
  url "https://github.com/saenzramiro/rambox/releases/download/#{version}/Rambox-#{version}-mac.zip"
  appcast 'https://github.com/saenzramiro/rambox/releases.atom',
          checkpoint: '5adaf69cea6ee7a8f86a4d260eaf55b93438421725e5440ec52fc4b89b075d96'
  name 'Rambox'
  homepage 'http://rambox.pro/'

  app 'Rambox.app'
end
