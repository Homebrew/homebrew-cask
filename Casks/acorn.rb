cask 'acorn' do
  version '5.4.1'
  sha256 '71d46ff25e739f15819aee8ad4a9e021ecf5b31122fd96788c923810b63ea05b'

  url 'https://secure.flyingmeat.com/download/Acorn.zip'
  appcast 'http://www.flyingmeat.com/download/acorn5update.xml',
          checkpoint: '51d2bff7118dd2d82883732f119b9036e937471bac4f50d9510903e5bd24d9b4'
  name 'Acorn'
  homepage 'http://flyingmeat.com/acorn/'
  license :commercial

  auto_updates true

  app 'Acorn.app'

  postflight do
    suppress_move_to_applications
  end
end
