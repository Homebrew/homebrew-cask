cask 'inky' do
  version :latest
  sha256 :no_check

  url 'https://download.inky.com/InkyInstall_osx_3.0.7_38.dmg'
  name 'Inky'
  homepage 'http://inky.com'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Inky.app'

  zap delete: [
                '~/Library/Application Support/Arcode',
                '~/Library/Caches/com.arcode.inky',
              ]
end
