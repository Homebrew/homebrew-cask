cask 'sfdx' do
  version :latest
  sha256 :no_check

  url 'https://developer.salesforce.com/media/salesforce-cli/sfdx-osx.pkg'
  name 'Salesforce DX CLI'
  homepage 'https://developer.salesforce.com/fr/tools/sfdxcli'

  pkg 'sfdx-osx.pkg'
end
