cask 'qmoji' do
  version '1.3.1'
  sha256 'dbe2d6de7bbbba3160434d8638fdccb2cfa192ecd7cbb4e5d573df74e9f740c5'

  url "https://github.com/jaredly/qmoji/releases/download/#{version}/qmoji.zip"
  appcast 'https://github.com/jaredly/qmoji/releases.atom'
  name 'qmoji'
  homepage 'https://github.com/jaredly/qmoji'

  app 'qmoji.app'
end
