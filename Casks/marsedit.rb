cask 'marsedit' do
  version '4.3.5'
  sha256 '92b820f70fd446bff529a97aeec1c4ebd51a0254d8211dfe0bd24679bb2a656c'

  url "https://red-sweater.com/marsedit/MarsEdit#{version}.zip"
  appcast 'https://red-sweater.com/marsedit/appcast4.php'
  name 'MarsEdit'
  homepage 'https://red-sweater.com/marsedit/'

  depends_on macos: '>= :sierra'

  app 'MarsEdit.app'
end
