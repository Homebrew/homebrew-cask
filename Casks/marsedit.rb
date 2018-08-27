cask 'marsedit' do
  version '4.1.2'
  sha256 '6fb2abf9a07cc89b3998253e605c649105af252f038dbc13fd15535f180ac677'

  url "https://red-sweater.com/marsedit/MarsEdit#{version}.zip"
  appcast 'https://red-sweater.com/marsedit/appcast4.php'
  name 'MarsEdit'
  homepage 'https://red-sweater.com/marsedit/'

  app 'MarsEdit.app'
end
