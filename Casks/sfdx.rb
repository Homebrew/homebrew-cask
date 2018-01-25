cask 'sfdx' do
  version :latest
  sha256 :no_check

  url 'https://developer.salesforce.com/media/salesforce-cli/sfdx-osx.pkg'
  name 'Salesforce DX CLI'
  homepage 'https://developer.salesforce.com/tools/sfdxcli'

  pkg 'sfdx-osx.pkg'

  uninstall pkgutil: 'com.sfdx.cli',
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
