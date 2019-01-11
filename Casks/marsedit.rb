cask 'marsedit' do
  version '4.2.4'
  sha256 'd227c899b1f7e997f1584bdf48991543ecf891ad2668f99859ea85f0eec65afc'

  url "https://red-sweater.com/marsedit/MarsEdit#{version}.zip"
  appcast 'https://red-sweater.com/marsedit/appcast4.php'
  name 'MarsEdit'
  homepage 'https://red-sweater.com/marsedit/'

  depends_on macos: '>= :sierra'

  app 'MarsEdit.app'
end
