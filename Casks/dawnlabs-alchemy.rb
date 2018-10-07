cask 'dawnlabs-alchemy' do
  version '0.5.1'
  sha256 '12209d471d220a14e57ff0407278a4d9e8274ab0a116cfd2b4479297c26f666b'

  url "https://github.com/dawnlabs/alchemy/releases/download/#{version}/Alchemy-mac.zip"
  appcast 'https://github.com/dawnlabs/alchemy/releases.atom'
  name 'Alchemy'
  homepage 'https://github.com/dawnlabs/alchemy'

  app 'Alchemy.app'

  uninstall signal: ['TERM', 'com.electron.alchemy']
end
