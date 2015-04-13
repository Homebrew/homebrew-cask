cask :v1 => 'namebench' do
  version '1.3.1'
  sha256 '524fb534b1b5790433332feb993ab30688858f6d92b1d511c842b1c9a8887250'

  url "https://namebench.googlecode.com/files/namebench-#{version}-Mac_OS_X.dmg"
  homepage 'https://code.google.com/p/namebench/'
  license :oss

  app 'namebench.app'
end
