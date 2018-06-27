cask 'dawnlabs-alchemy' do
  version '0.5.1'
  sha256 '8dc9f0e4ce2ed573d60f685f1e6ed11094c0da049a6e3c93bc413916217b55e9'

  url "https://github.com/dawnlabs/alchemy/releases/download/#{version}/Alchemy-mac.zip"
  appcast 'https://github.com/dawnlabs/alchemy/releases.atom'
  name 'Alchemy'
  homepage 'https://github.com/dawnlabs/alchemy'

  app 'Alchemy.app'

  uninstall signal: ['TERM', 'com.electron.alchemy']
end
