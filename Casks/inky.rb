cask :v1 => 'inky' do
  version :latest
  sha256 :no_check

  url 'https://inky.com/mail/InkyInstall.dmg'
  homepage 'http://inky.com'
  license :unknown    # todo: improve this machine-generated value

  app 'Inky.app'

  zap :delete => [
                  '~/Library/Application Support/Arcode',
                  '~/Library/Caches/com.arcode.inky',
                 ]
end
