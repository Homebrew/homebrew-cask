cask 'file-juicer' do
  version '4.77'
  sha256 '1d9e2827eb16e036b29ab71297272f3640a3491213de6d7869dd279d6a9c3617'

  url "https://echoone.com/filejuicer/FileJuicer-#{version}.zip"
  appcast 'https://echoone.com/filejuicer/download'
  name 'File Juicer'
  homepage 'https://echoone.com/filejuicer/'

  app 'File Juicer.app'
end
