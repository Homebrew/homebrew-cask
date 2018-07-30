cask 'dawnlabs-alchemy' do
  version '0.5.1'
  sha256 'c49f55f17f155a5e7c5241d364a927f0e9375cf51c11bc24238acf0108c9f958'

  url "https://github.com/dawnlabs/alchemy/releases/download/#{version}/Alchemy-mac.zip"
  appcast 'https://github.com/dawnlabs/alchemy/releases.atom'
  name 'Alchemy'
  homepage 'https://github.com/dawnlabs/alchemy'

  app 'Alchemy.app'

  uninstall signal: ['TERM', 'com.electron.alchemy']
end
