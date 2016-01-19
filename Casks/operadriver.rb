cask 'operadriver' do
  version '0.2.2'
  sha256 '6584ea2b0ebb06a2c5639570fdac0a28de90bb88982ce9e74d531147106988bd'

  url "https://github.com/operasoftware/operachromiumdriver/releases/download/v#{version}/operadriver_mac64.zip"
  appcast 'https://github.com/operasoftware/operachromiumdriver/releases.atom',
          checkpoint: 'a17c9b85ec515b393f9b29c6bf27e7f3103d92e7fa3e079a9ba41ce145d3ddf3'
  name 'operachromiumdriver'
  homepage 'https://github.com/operasoftware/operachromiumdriver'
  license :apache

  binary 'operadriver'
end
