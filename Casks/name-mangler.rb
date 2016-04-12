cask 'name-mangler' do
  version '3.3.6'
  sha256 'f2fb5e2a5aa57fd003555126a7040e4f02544fedff7989695c0cf751556ab282'

  url 'https://manytricks.com/download/namemangler'
  appcast 'https://manytricks.com/namemangler/appcast.xml',
          checkpoint: 'be1408f87e4133496d22f236905192887cc62cfc2ad5bf5347609b614fdc3b60'
  name 'Name Mangler'
  homepage 'https://manytricks.com/namemangler/'
  license :freemium

  auto_updates true

  app 'Name Mangler.app'
end
