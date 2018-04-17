cask '0xed' do
  version :latest
  sha256 :no_check

  url 'http://www.suavetech.com/cgi-bin/download.cgi?0xED.tar.bz2'
  name '0xED'
  homepage 'http://www.suavetech.com/0xed/'

  app '0xED.app'

  zap trash: [
               '~/Library/Caches/com.suavetech.0xED',
               '~/Library/Logs/0xED.log',
             ]
end
