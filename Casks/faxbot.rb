cask 'faxbot' do
  version :latest
  sha256 :no_check

  url 'https://www.hosy.de/faxer/Faxer.zip'
  name 'Faxbot'
  homepage 'https://www.hosy.de/faxer/'

  app 'Faxbot.app'

  zap trash: [
               '~/Library/Application Support/de.hosy.Faxer',
               '~/Library/Application Support/Faxbot',
               '~/Library/Caches/de.hosy.Faxer',
               '~/Library/Preferences/de.hosy.Faxer.plist',
             ]
end
