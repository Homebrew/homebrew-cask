cask :v1 => 'kontroll' do
  version :latest
  sha256 :no_check

  url 'https://kontroll.io/download/Kontroll.zip'
  name 'Kontroll'
  homepage 'https://kontroll.io/'
  license :gratis

  app 'Kontroll.app'

  depends_on :macos => '>= 10.10'

  zap :delete => '~/Library/Preferences/com.vinkla.Kontroll.plist'
end
