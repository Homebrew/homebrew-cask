cask 'name-mangler' do
  version '3.4'
  sha256 '460f802b90e0e0123d397199600b68adf609e656e51a7b23f38bdf9eec05c91e'

  url 'https://manytricks.com/download/namemangler'
  appcast 'https://manytricks.com/namemangler/appcast.xml',
          checkpoint: 'e2b10fede763493b3d336d082c4ab8fc12c8b74692f7f94585a5f2b3cd61a220'
  name 'Name Mangler'
  homepage 'https://manytricks.com/namemangler/'

  auto_updates true

  app 'Name Mangler.app'
end
