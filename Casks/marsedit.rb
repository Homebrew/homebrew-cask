cask 'marsedit' do
  version '4.3.2'
  sha256 '18768d0116683c52ae12c92b329c00140a8b802b5869c0e6558e923e45188624'

  url "https://red-sweater.com/marsedit/MarsEdit#{version}.zip"
  appcast 'https://red-sweater.com/marsedit/appcast4.php'
  name 'MarsEdit'
  homepage 'https://red-sweater.com/marsedit/'

  depends_on macos: '>= :sierra'

  app 'MarsEdit.app'
end
