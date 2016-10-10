cask 'ip-inside-agent-for-hana-bank' do
  version :latest
  sha256 :no_check

  url 'https://open.hanabank.com/interezen/agent/IPinsideAgent.dmg'
  name 'IP inside Agent for Hana Bank'
  homepage 'https://open.hanabank.com'

  pkg 'IPinsideAgent.pkg'

  uninstall pkgutil: 'I3GManager.Plugin.ipinsideAgent.*',
            rmdir:   '/Applications/IPinside'
end
