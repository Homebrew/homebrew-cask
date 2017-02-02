cask 'acorn' do
  version '5.6.2'
  sha256 'e67b96b07746b7bd9b23a100a8366954551467658da5f2178a7dd13d25090958'

  url 'https://secure.flyingmeat.com/download/Acorn.zip'
  appcast "http://www.flyingmeat.com/download/acorn#{version.major}update.xml",
          checkpoint: '4a02b750dc74fd39954c1bba77f7fd977e9097a02c6f7a7e7431842356f2655e'
  name 'Acorn'
  homepage 'http://flyingmeat.com/acorn/'

  auto_updates true

  app 'Acorn.app'

  postflight do
    suppress_move_to_applications
  end
end
