cask :v1 => 'inky' do
  version :latest
  sha256 :no_check

  url 'https://inky.com/mail/InkyInstall.dmg'
  name 'Inky'
  homepage 'http://inky.com'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Inky.app'

  zap :delete => [
                  '~/Library/Application Support/Arcode',
                  '~/Library/Caches/com.arcode.inky',
                 ]
end
