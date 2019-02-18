cask 'story-writer' do
  version '7.0.0'
  sha256 '9d46c7ccf6d805449de536fa582126a243477d6bf4636ba7f76b068620a9e94b'

  # github.com/suziwen/markdownxiaoshujiang was verified as official when first introduced to the cask
  url "https://github.com/suziwen/markdownxiaoshujiang/releases/download/v#{version}/Story-writer-osx64.zip"
  appcast 'https://github.com/suziwen/markdownxiaoshujiang/releases.atom'
  name 'Story Writer'
  homepage 'http://soft.xiaoshujiang.com/'

  app 'Story-writer.app'
end
