cask 'acorn' do
  version '5.6.2'
  sha256 '89b794eebbace2e81c6d1e4c9425f37d14f864e00fba30b1b4eb6f37ff635a8f'

  url 'https://secure.flyingmeat.com/download/Acorn.zip'
  appcast "http://www.flyingmeat.com/download/acorn#{version.major}update.xml",
          checkpoint: '3362206a7a3a6b81d107918a92e606e99b3aa1b6cb2b38c0c73f3580b13220f0'
  name 'Acorn'
  homepage 'http://flyingmeat.com/acorn/'

  auto_updates true

  app 'Acorn.app'

  postflight do
    suppress_move_to_applications
  end
end
