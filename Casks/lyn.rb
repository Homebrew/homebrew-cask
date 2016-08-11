cask 'lyn' do
  version '1.7.1'
  sha256 '9d99d4873b2a58752078739a38345d17e52df7dc2fc73d3eed93234db9d889d2'

  url "http://www.lynapp.com/downloads/Lyn-#{version}.dmg"
  appcast 'http://www.lynapp.com/lyn/update.xml',
          checkpoint: 'ae2fdff654b5f3a2e86d868d02521fb9a28d09353188703a1cdfd3cdaf755d84'
  name 'Lyn'
  homepage 'http://www.lynapp.com/'
  license :commercial

  app 'Lyn.app'
end
