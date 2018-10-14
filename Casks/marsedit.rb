cask 'marsedit' do
  version '4.2.1'
  sha256 'e928a318f1bc7b1dd1e0723a8fa0e96cd85f5fdf7f306fecb04d7b159efc56fb'

  url "https://red-sweater.com/marsedit/MarsEdit#{version}.zip"
  appcast 'https://red-sweater.com/marsedit/appcast4.php'
  name 'MarsEdit'
  homepage 'https://red-sweater.com/marsedit/'

  depends_on macos: '>= :sierra'

  app 'MarsEdit.app'
end
