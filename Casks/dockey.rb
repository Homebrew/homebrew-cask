cask 'dockey' do
  version :latest
  sha256 :no_check

  url 'http://dockey.publicspace.co/download/Dockey-latest.zip'
  name 'dockey'
  homepage 'http://dockey.publicspace.co/'

  depends_on macos: '>= :high_sierra'

  app 'dockey.app'

  uninstall quit: 'com.igorstumberger.dockey'
end
