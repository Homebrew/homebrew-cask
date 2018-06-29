cask 'operadriver' do
  version '2.37'
  sha256 'd7220fef597a6e7da28c594a82fe0edab8449d6992ef28a20cd1fa4173d02fd3'

  url "https://github.com/operasoftware/operachromiumdriver/releases/download/v.#{version}/operadriver_mac64.zip"
  appcast 'https://github.com/operasoftware/operachromiumdriver/releases.atom'
  name 'operachromiumdriver'
  homepage 'https://github.com/operasoftware/operachromiumdriver'

  binary 'operadriver_mac64/operadriver'
end
