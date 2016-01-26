cask 'file-juicer' do
  version :latest
  sha256 :no_check

  url 'http://echoone.com/filejuicer/FileJuicer.dmg'
  name 'File Juicer'
  homepage 'http://echoone.com/filejuicer/'
  license :commercial

  app 'File Juicer.app'
end
