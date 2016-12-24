cask 'acorn' do
  version '5.6'
  sha256 '7f178a4311b5eac100219609f02dc464afe7ce5fe741b3f05819fc67ee67b9b5'

  url 'https://secure.flyingmeat.com/download/Acorn.zip'
  appcast "http://www.flyingmeat.com/download/acorn#{version.major}update.xml",
          checkpoint: 'a322e2ec5dfbfbcb21b7fd7054a7f453447780dfb6ee1a35e03cc2a12452f112'
  name 'Acorn'
  homepage 'http://flyingmeat.com/acorn/'

  auto_updates true

  app 'Acorn.app'

  postflight do
    suppress_move_to_applications
  end
end
