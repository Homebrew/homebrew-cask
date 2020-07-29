cask 'sfdx' do
  version '7.36.0-b1c4e9c7c8'
  sha256 '0b8db60c986378380cb3e44bff2fd23c4826cddff385344e3976b908f01e0cde'

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
             ]
end
