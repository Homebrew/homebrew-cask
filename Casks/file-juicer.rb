cask 'file-juicer' do
  version '4.67'
  sha256 :no_check # required as upstream package is updated in-place

  url "https://echoone.com/filejuicer/FileJuicer-#{version}.zip"
  appcast 'https://echoone.com/filejuicer/download'
  name 'File Juicer'
  homepage 'https://echoone.com/filejuicer/'

  app 'File Juicer.app'
end
