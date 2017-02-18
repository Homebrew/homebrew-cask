cask 'acorn' do
  version '5.6.3'
  sha256 '098b8474c5b8d19a9ab2c9d168e85b67c2db02474eb02b8aff7c9d5cd0687934'

  url 'https://secure.flyingmeat.com/download/Acorn.zip'
  appcast "http://www.flyingmeat.com/download/acorn#{version.major}update.xml",
          checkpoint: 'd860e6247d02a0f1d1b63fdff821db4027970e10e4fd953dfb736b833ddb5dc8'
  name 'Acorn'
  homepage 'http://flyingmeat.com/acorn/'

  auto_updates true

  app 'Acorn.app'

  postflight do
    suppress_move_to_applications
  end
end
