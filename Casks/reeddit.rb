cask :v1 => 'reeddit' do
  version '1.9.5'
  sha256 '5d5a024ffdf2aa09e99c3d94af7650d10682b91aa9e572dfbab9f8101c9740f1'

  url "https://github.com/berbaquero/Reeddit-app/releases/download/v#{version}/Reeddit.app.zip"
  homepage 'http://mac.reedditapp.com'
  license :oss

  app 'Reeddit.app'
end
