cask 'namebench' do
  version '1.3.1'
  sha256 '524fb534b1b5790433332feb993ab30688858f6d92b1d511c842b1c9a8887250'

  url "https://storage.googleapis.com/google-code-archive-downloads/v1/code.google.com/namebench/namebench-#{version}-Mac_OS_X.dmg"
  name 'namebench'
  homepage 'https://code.google.com/archive/p/namebench/'
  license :oss

  app 'namebench.app'

  caveats do
    discontinued
  end
end
