cask 'operadriver' do
  version '2.36'
  sha256 'ab15214da6f5ab754e0121c08fef4a5a01539c162061f887f822caa684c8b7d1'

  url "https://github.com/operasoftware/operachromiumdriver/releases/download/v.#{version}/operadriver_mac64.zip"
  appcast 'https://github.com/operasoftware/operachromiumdriver/releases.atom'
  name 'operachromiumdriver'
  homepage 'https://github.com/operasoftware/operachromiumdriver'

  binary 'operadriver_mac64/operadriver'
end
