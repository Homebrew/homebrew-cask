cask 'avocode' do
  version '2.5.2'
  sha256 '19087366dd81afc569abb9fca45738da5defbda5a2d2976e3fbaa5246182d10b'

  url "http://mediacdn.avocode.com/download/avocode-app/#{version}/avocode-app-mac-#{version}.zip"
  name 'Avocode'
  homepage 'http://avocode.com/'
  license :commercial

  app 'Avocode.app'
end
