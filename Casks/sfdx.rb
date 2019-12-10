cask 'sfdx' do
  version '7.36.0-b1c4e9c7c8'
  sha256 '5d856da3566464318d641753ad62e13a3be08b693c00c23056a25220ac0d5b58'

  url "https://developer.salesforce.com/media/salesforce-cli/sfdx-cli/channels/stable/sfdx-cli-v#{version}.pkg"
  appcast 'https://developer.salesforce.com/media/salesforce-cli/manifest.json'
  name 'Salesforce DX CLI'
  homepage 'https://developer.salesforce.com/tools/sfdxcli'

  pkg "sfdx-cli-v#{version}.pkg"

  uninstall pkgutil: 'com.salesforce.developer.cli',
            delete:  '/usr/local/bin/sfdx'

  zap trash: [
               '~/.cache/sfdx',
               '~/.config/sfdx',
               '~/.local/share/sfdx',
             ],
      rmdir: [
               '~/.cache',
               '~/.config',
               '~/.local/share',
               '~/.local',
             ]
end
