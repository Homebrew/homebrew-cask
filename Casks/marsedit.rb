cask 'marsedit' do
  version '4.3.1'
  sha256 'ee787b82dd908d6a5d5b9f5048bc8b967f1e2720da37b8a3df74337b2ab9a7a9'

  url "https://red-sweater.com/marsedit/MarsEdit#{version}.zip"
  appcast 'https://red-sweater.com/marsedit/appcast4.php'
  name 'MarsEdit'
  homepage 'https://red-sweater.com/marsedit/'

  depends_on macos: '>= :sierra'

  app 'MarsEdit.app'
end
