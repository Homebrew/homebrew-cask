cask 'flotato' do
  version :latest
  sha256 :no_check

  url 'https://flotato.com/download/'
  name 'Flotato'
  homepage 'https://flotato.com/'

  app 'Flotato.app'

  zap trash: [
               '/Applications/Flotato Help.app',
               '~/Library/Application Support/Flotato',
               '~/Library/WebKit/com.mortenjust.flotato',
             ]
end
