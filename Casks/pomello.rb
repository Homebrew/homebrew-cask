cask 'pomello' do
  version '0.10.1'
  sha256 'a206447b88e842d2d4aa886bee9721e3b7e995ecf1bbf73b379b1a273d737ad1'

  url 'https://pomelloapp.com/download/mac/latest'
  appcast 'https://pomelloapp.com/download/mac'
  name 'Pomello'
  homepage 'https://pomelloapp.com/'

  app 'Pomello.app'
end
