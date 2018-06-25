cask 'dawnlabs-alchemy' do
  version '0.5.0'
  sha256 '77d7e1664d29b381af892502f076d435fccbe47ba6e32536b3986a839c46dc44'

  url "https://github.com/dawnlabs/alchemy/releases/download/#{version}/Alchemy-mac.zip"
  appcast 'https://github.com/dawnlabs/alchemy/releases.atom'
  name 'Alchemy'
  homepage 'https://github.com/dawnlabs/alchemy'

  app 'Alchemy.app'

  uninstall signal: ['TERM', 'com.electron.alchemy']
end
