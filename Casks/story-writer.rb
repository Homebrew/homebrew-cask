cask 'story-writer' do
  version '7.1.0'
  sha256 '3ad99954539e98197b0bad4a84ca58c2d5801c5020533494f57545a676c1a683'

  # github.com/suziwen/markdownxiaoshujiang was verified as official when first introduced to the cask
  url "https://github.com/suziwen/markdownxiaoshujiang/releases/download/v#{version}/Story-writer-osx64.zip"
  appcast 'https://github.com/suziwen/markdownxiaoshujiang/releases.atom'
  name 'Story Writer'
  homepage 'http://soft.xiaoshujiang.com/'

  app 'Story-writer.app'
end
