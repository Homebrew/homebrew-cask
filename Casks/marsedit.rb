cask 'marsedit' do
  version '4.3.3'
  sha256 '9f25d596a05713100a067881fe0f9a299acbf0e0fac4983576274e7f0356e5e4'

  url "https://red-sweater.com/marsedit/MarsEdit#{version}.zip"
  appcast 'https://red-sweater.com/marsedit/appcast4.php'
  name 'MarsEdit'
  homepage 'https://red-sweater.com/marsedit/'

  depends_on macos: '>= :sierra'

  app 'MarsEdit.app'
end
