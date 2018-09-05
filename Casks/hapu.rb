cask 'hapu' do
  version :latest
  sha256 :no_check

  url 'https://tars.mahdi.jp/squirrel/hapu.zip'
  name 'HAPU'
  homepage 'https://mahdi.jp/apps/hapu'

  app 'HAPU.app'

  zap trash: [
               '~/Library/Caches/jp.mahdi.HAPU',
               '~/Library/Preferences/jp.mahdi.HAPU.plist',
               '~/Library/Cookies/jp.mahdi.HAPU.binarycookies',
               '~/Library/Application Support/jp.mahdi.HAPU.ShipIt',
             ]
end
