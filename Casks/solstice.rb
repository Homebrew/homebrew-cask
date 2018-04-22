cask 'solstice' do
  version :latest
  sha256 :no_check

  url 'http://www.mersive.com/downloads/SolsticeClientMacWeb.zip'
  name 'Solstice Client'
  homepage 'https://www2.mersive.com/'

  app 'SolsticeClientMacWeb.app'
end
