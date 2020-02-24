cask 'marsedit' do
  version '4.3.6'
  sha256 '63465f2757bd781f3161c3eeb8f30d4a26cb0ec6b239df3bde29663c9f67ca6b'

  url "https://red-sweater.com/marsedit/MarsEdit#{version}.zip"
  appcast 'https://red-sweater.com/marsedit/appcast4.php'
  name 'MarsEdit'
  homepage 'https://red-sweater.com/marsedit/'

  depends_on macos: '>= :sierra'

  app 'MarsEdit.app'
end
