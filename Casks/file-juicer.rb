cask 'file-juicer' do
  version '4.67'
  sha256 'f50f1538fcad459b331cfd73d8c633fdbd806f6f69e346592f1182b2eb0813b9'

  url "https://echoone.com/filejuicer/FileJuicer-#{version}.zip"
  appcast 'https://echoone.com/filejuicer/download'
  name 'File Juicer'
  homepage 'https://echoone.com/filejuicer/'

  app 'File Juicer.app'
end
