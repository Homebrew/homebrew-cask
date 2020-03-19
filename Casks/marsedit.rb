cask 'marsedit' do
  version '4.3.7'
  sha256 'dab353d0abd0e5f09efc91ccc4d9845c141bd8100e3b44286e31294974b52022'

  url "https://red-sweater.com/marsedit/MarsEdit#{version}.zip"
  appcast 'https://red-sweater.com/marsedit/appcast4.php'
  name 'MarsEdit'
  homepage 'https://red-sweater.com/marsedit/'

  depends_on macos: '>= :sierra'

  app 'MarsEdit.app'
end
