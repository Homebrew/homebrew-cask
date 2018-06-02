cask 'dawnlabs-alchemy' do
  version '0.4.1'
  sha256 '0034f844f547cddf1a06a7227aa80710c2253a3a1f76f0a231b8cc8508a54540'

  url "https://github.com/dawnlabs/alchemy/releases/download/#{version}/Alchemy-mac.zip"
  appcast 'https://github.com/dawnlabs/alchemy/releases.atom',
          checkpoint: '2d5f8938b10c9cef7666d3f06079252334e3cf4d186b7724642086a05a902825'
  name 'Alchemy'
  homepage 'https://github.com/dawnlabs/alchemy'

  app 'Alchemy.app'

  uninstall signal: ['TERM', 'com.electron.alchemy']
end
