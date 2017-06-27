cask 'story-writer' do
  version '3.1.1'
  sha256 'fc381d66ac8db4a81833ed024603405cb5cef626d0d00d18b47df97f6541737c'

  # github.com/suziwen/markdownxiaoshujiang was verified as official when first introduced to the cask
  url "https://github.com/suziwen/markdownxiaoshujiang/releases/download/v#{version}/Story-writer-osx64.zip"
  appcast 'https://github.com/suziwen/markdownxiaoshujiang/releases.atom',
          checkpoint: '04fe34d677d7250f1295653b23de040bfcce1809e7f2874165a360d490b61e79'
  name 'Story Writer'
  homepage 'http://soft.xiaoshujiang.com/'

  app 'Story-writer.app'
end
