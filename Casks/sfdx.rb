cask 'sfdx' do
  version '7.8.1-8f830784cc'
  sha256 '91756020f4208041bbe14cf1edbedb7397d747a6fdd3961f7cb1c72a408a5c43'

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
