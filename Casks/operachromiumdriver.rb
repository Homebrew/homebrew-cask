cask :v1 => 'operachromiumdriver' do
  version '0.2.2'
  sha256 '6584ea2b0ebb06a2c5639570fdac0a28de90bb88982ce9e74d531147106988bd'

  url 'https://github.com/operasoftware/operachromiumdriver/releases/download/v0.2.2/operadriver_mac64.zip'
  name 'operachromiumdriver'
  homepage 'https://github.com/operasoftware/operachromiumdriver'
  license :apache

  binary 'operadriver'
end
