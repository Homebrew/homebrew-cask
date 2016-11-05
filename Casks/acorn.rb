cask 'acorn' do
  version '5.5.2'
  sha256 'e8b1ca2ae886dca003f6cb43effd1f128a340dd08e952873da22178abed1231e'

  url 'https://secure.flyingmeat.com/download/Acorn.zip'
  appcast "http://www.flyingmeat.com/download/acorn#{version.major}update.xml",
          checkpoint: 'fdd211ab0c3a91766a9b5c7a69371bb235b3877921022dba70d3ac8fd8ba7fea'
  name 'Acorn'
  homepage 'http://flyingmeat.com/acorn/'

  auto_updates true

  app 'Acorn.app'

  postflight do
    suppress_move_to_applications
  end
end
