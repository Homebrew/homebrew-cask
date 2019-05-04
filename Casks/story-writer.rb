cask 'story-writer' do
  version '7.3.0'
  sha256 '2c46f0c5208169e0ecd0a13a8169d5d793cda2f587648b049c8c7b36b1ace1af'

  # github.com/suziwen/markdownxiaoshujiang was verified as official when first introduced to the cask
  url "https://github.com/suziwen/markdownxiaoshujiang/releases/download/v#{version}/Story-writer-osx64.zip"
  appcast 'https://github.com/suziwen/markdownxiaoshujiang/releases.atom'
  name 'Story Writer'
  homepage 'http://soft.xiaoshujiang.com/'

  app 'Story-writer.app'
end
