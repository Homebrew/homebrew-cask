cask 'story-writer' do
  version '6.0.0'
  sha256 '21e06e1f0214c7ff80ce580e8454a6b81ad64193b02ba7ca863985de4ab71935'

  # github.com/suziwen/markdownxiaoshujiang was verified as official when first introduced to the cask
  url "https://github.com/suziwen/markdownxiaoshujiang/releases/download/v#{version}/Story-writer-osx64.zip"
  appcast 'https://github.com/suziwen/markdownxiaoshujiang/releases.atom',
          checkpoint: '812823c5071c30f0cf186eecf163d741b3849cce11e238ecf0c54f5bf61644b3'
  name 'Story Writer'
  homepage 'http://soft.xiaoshujiang.com/'

  app 'Story-writer.app'
end
