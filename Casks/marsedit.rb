cask 'marsedit' do
  version '4.3'
  sha256 'c956237333a5fa8f26aa40db7c787131067e699a125804bd56187355c6a73437'

  url "https://red-sweater.com/marsedit/MarsEdit#{version}.zip"
  appcast 'https://red-sweater.com/marsedit/appcast4.php'
  name 'MarsEdit'
  homepage 'https://red-sweater.com/marsedit/'

  depends_on macos: '>= :sierra'

  app 'MarsEdit.app'
end
