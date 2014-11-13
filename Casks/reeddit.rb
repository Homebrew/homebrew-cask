cask :v1 => 'reeddit' do
  version '1.9'
  sha256 '7bb465aa5a8c80adfb6f73430caee9cc977afae77d2a55be97371b9516aa01a7'

  url "https://github.com/berbaquero/Reeddit-app/releases/download/v#{version}/Reeddit.app.zip"
  homepage 'http://mac.reedditapp.com'
  license :oss

  app 'Reeddit.app'
end
