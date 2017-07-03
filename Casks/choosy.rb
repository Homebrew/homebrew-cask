cask 'choosy' do
  version '1.2.1'
  sha256 '820009af29bcc9bf1b476962b028c6dd49486ab20b45fbd6d8ee3f1f3abce46a'

  url "https://downloads.choosyosx.com/choosy_#{version}.zip"
  appcast 'https://www.choosyosx.com/sparkle/feed',
          checkpoint: '66dd9d3135d0fb6668d120b5cb5011e2add6aae160e12abe0246513a2693f7fd'
  name 'Choosy'
  homepage 'https://www.choosyosx.com/'

  prefpane 'Choosy.prefPane'
end
