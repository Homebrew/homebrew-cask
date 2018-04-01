cask 'streakerbar' do
  version '1.1'
  sha256 '61735052d8e7613dc4d898c4236ed8b277ad742456c2067e4a750c7a937529f5'

  url "https://github.com/chaserx/streakerbar/releases/download/v#{version}/streakerbar.zip"
  appcast 'https://github.com/chaserx/streakerbar/releases.atom',
          checkpoint: '362c12ae2a99611e783ca3e5f5a173d6c307d7ce8389ecc255015cd57d12df7a'
  name 'streakerbar'
  homepage 'https://github.com/chaserx/streakerbar'

  app 'streakerbar.app'
end
