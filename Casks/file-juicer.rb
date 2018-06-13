cask 'file-juicer' do
  version '4.66'
  sha256 '229bca1c5523290ab35ae89a8c5a98bad601427b1fe0b1c71ebaee99bb06c218'

  url "https://echoone.com/filejuicer/FileJuicer-#{version}.zip"
  appcast 'https://echoone.com/filejuicer/download'
  name 'File Juicer'
  homepage 'https://echoone.com/filejuicer/'

  app 'File Juicer.app'
end
