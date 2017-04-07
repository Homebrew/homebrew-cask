cask 'operadriver' do
  version '2.27'
  sha256 '2e30a9ab0c05329db8181d8dbc17b89491f7b2504a49a32d4ae2caa907b51be4'

  url "https://github.com/operasoftware/operachromiumdriver/releases/download/v.#{version}/operadriver_mac64.zip"
  appcast 'https://github.com/operasoftware/operachromiumdriver/releases.atom',
          checkpoint: '4ea8096bf0d539fcbadd869cd5acdaf8efdccee94553218863a903c439f1099e'
  name 'operachromiumdriver'
  homepage 'https://github.com/operasoftware/operachromiumdriver'

  binary 'operadriver'
end
