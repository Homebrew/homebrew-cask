cask 'secure-pipes' do
  version '0.99.8,15e8a5ef38260ea'
  sha256 'ea52611b251ecd03cf0ccb0127ed6a9032a4d48d6faf6053b1459cc1930cbaf8'

  url "https://www.opoet.com/pyro/index.php/files/download/#{version.after_comma}"
  name 'Secure Pipes'
  homepage 'https://www.opoet.com/pyro/index.php/'

  app 'Secure Pipes.app'
end
