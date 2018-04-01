cask 'story-writer' do
  version '5.1.0'
  sha256 'fe600419483a44bcc8bb444b5ad343ae8e088c7da03f2b64f5974d83cacc202b'

  # github.com/suziwen/markdownxiaoshujiang was verified as official when first introduced to the cask
  url "https://github.com/suziwen/markdownxiaoshujiang/releases/download/v#{version}/Story-writer-osx64.zip"
  appcast 'https://github.com/suziwen/markdownxiaoshujiang/releases.atom',
          checkpoint: 'a673662f2a37af76a8d4a1de2be76d2c6e5b67532d7b1aaa767d98958f6f8532'
  name 'Story Writer'
  homepage 'http://soft.xiaoshujiang.com/'

  app 'Story-writer.app'
end
