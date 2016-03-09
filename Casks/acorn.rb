cask 'acorn' do
  version '5.3'
  sha256 'c602778bbc0b44f164dbaf9c6c7ee48d3be9305d1522efdb4b561290e8649652'

  url 'https://secure.flyingmeat.com/download/Acorn.zip'
  appcast 'http://www.flyingmeat.com/download/acorn5update.xml',
          checkpoint: 'a00b7a314d4e3c1c29748aef856eff8fea178278e1129b5521bc044e6bc6d4d8'
  name 'Acorn'
  homepage 'http://flyingmeat.com/acorn/'
  license :commercial

  auto_updates true

  app 'Acorn.app'

  postflight do
    suppress_move_to_applications
  end
end
