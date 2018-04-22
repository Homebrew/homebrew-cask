cask 'solstice' do
  version :latest
  sha256 :no_check

  url 'https://www.mersive.com/downloads/SolsticeClientMacWeb.zip'
  name 'Solstice Client'
  homepage 'https://www2.mersive.com/'

  installer manual: 'SolsticeClientMacWeb.app'

  uninstall delete: '~/Desktop/Solstice Client.app'
end
