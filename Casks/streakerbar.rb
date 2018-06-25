cask 'streakerbar' do
  version '1.1'
  sha256 '61735052d8e7613dc4d898c4236ed8b277ad742456c2067e4a750c7a937529f5'

  url "https://github.com/chaserx/streakerbar/releases/download/v#{version}/streakerbar.zip"
  appcast 'https://github.com/chaserx/streakerbar/releases.atom'
  name 'streakerbar'
  homepage 'https://github.com/chaserx/streakerbar'

  app 'streakerbar.app'
end
