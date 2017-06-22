cask 'dawnlabs-alchemy' do
  version '0.2.0'
  sha256 'b0ca088c768d5a57cb0f6af36b350e39a973efa0c708492b39813a85e780b918'

  url "https://github.com/dawnlabs/alchemy/releases/download/#{version}/Alchemy-darwin-x64.zip"
  appcast 'https://github.com/dawnlabs/alchemy/releases.atom',
          checkpoint: '23d096e36fcf11c25f99573b539f6a5d864df15a609907861969b575e628597d'
  name 'Alchemy'
  homepage 'https://github.com/dawnlabs/alchemy'

  app 'Alchemy-darwin-x64/Alchemy.app'

  uninstall signal: ['TERM', 'com.electron.alchemy']
end
