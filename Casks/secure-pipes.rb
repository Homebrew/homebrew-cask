cask 'secure-pipes' do
  version '0.99.10,74ba1dcf08a3a62'
  sha256 '4aad61805b83ca12077d09648cd787e093042240ee53f68a41a2254f94ae7c23'

  url "https://www.opoet.com/pyro/index.php/files/download/#{version.after_comma}"
  name 'Secure Pipes'
  homepage 'https://www.opoet.com/pyro/index.php/'

  app 'Secure Pipes.app'
end
