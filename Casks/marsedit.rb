cask 'marsedit' do
  version '4.2.2'
  sha256 'fe38e9708cbc17023192c7126e580c59e4500ac74f8c0b66f9cad6c628bb3a72'

  url "https://red-sweater.com/marsedit/MarsEdit#{version}.zip"
  appcast 'https://red-sweater.com/marsedit/appcast4.php'
  name 'MarsEdit'
  homepage 'https://red-sweater.com/marsedit/'

  depends_on macos: '>= :sierra'

  app 'MarsEdit.app'
end
