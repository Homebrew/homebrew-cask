cask 'ip-inside-agent-for-citibank' do
  version :latest
  sha256 :no_check

  url 'https://open.citibank.co.kr/3rdParty/interezen/OSX-MAC/IPinsideAgent.dmg'
  name 'IP inside Agent for CitiBank'
  homepage 'https://open.citibank.co.kr'
  license :gratis

  pkg 'IPinsideAgent.pkg'

  uninstall pkgutil: [
                       'INTEREZEN Internet Plug-in Launch',
                       'INTEREZEN Internet Plug-in Uninstaller',
                       'INTEREZEN Internet Plug-in',
                     ],
            rmdir:   '/Applications/IPinside'
end
