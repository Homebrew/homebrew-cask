cask 'eaglefiler' do
  version '1.8.12'
  sha256 '350337cc33a77e051ad6bb803eb34ea86681b17dfb968f6a322506b72918c6db'

  url "https://c-command.com/downloads/EagleFiler-#{version}.dmg"
  appcast 'https://c-command.com/eaglefiler/help/version-history'
  name 'EagleFiler'
  homepage 'https://c-command.com/eaglefiler/'

  app 'EagleFiler.app'
end
