cask 'name-mangler' do
  version '3.4'
  sha256 '460f802b90e0e0123d397199600b68adf609e656e51a7b23f38bdf9eec05c91e'

  url 'https://manytricks.com/download/namemangler'
  appcast 'https://manytricks.com/namemangler/appcast/',
          checkpoint: 'bd563ec5d011424d6f90b5b46a6d85e54fe1acc7ddb919ef96b5a3f96eb5f03b'
  name 'Name Mangler'
  homepage 'https://manytricks.com/namemangler/'

  auto_updates true

  app 'Name Mangler.app'
end
