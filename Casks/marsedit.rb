cask 'marsedit' do
  version '4.3.4'
  sha256 '027ec71207f82f67f9f31a0b32699a45f5ede485a43ef3d319ae5ff422be6eae'

  url "https://red-sweater.com/marsedit/MarsEdit#{version}.zip"
  appcast 'https://red-sweater.com/marsedit/appcast4.php'
  name 'MarsEdit'
  homepage 'https://red-sweater.com/marsedit/'

  depends_on macos: '>= :sierra'

  app 'MarsEdit.app'
end
