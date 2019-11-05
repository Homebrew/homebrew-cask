cask 'operadriver' do
  version '77.0.3865.120'
  sha256 '77cc8a242ca21b3c445abaf81de7c0d79816dbaadce1460bb161ecf945070418'

  url "https://github.com/operasoftware/operachromiumdriver/releases/download/v.#{version}/operadriver_mac64.zip"
  appcast 'https://github.com/operasoftware/operachromiumdriver/releases.atom'
  name 'operachromiumdriver'
  homepage 'https://github.com/operasoftware/operachromiumdriver'

  binary 'operadriver_mac64/operadriver'
end
