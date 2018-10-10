cask 'marsedit' do
  version '4.1.5'
  sha256 '28957a38cd744e62e9b915c08064011b1ac2fe5038bff37fd2b6e7b9dac0f727'

  url "https://red-sweater.com/marsedit/MarsEdit#{version}.zip"
  appcast 'https://red-sweater.com/marsedit/appcast4.php'
  name 'MarsEdit'
  homepage 'https://red-sweater.com/marsedit/'

  depends_on macos: '>= :sierra'

  app 'MarsEdit.app'
end
