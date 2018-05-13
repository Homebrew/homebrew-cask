cask 'story-writer' do
  version '5.6.0'
  sha256 '4c35bb5d3c4e0efbdc1b21724b343e18b58ca841ecb29ade1b445d473f560d48'

  # github.com/suziwen/markdownxiaoshujiang was verified as official when first introduced to the cask
  url "https://github.com/suziwen/markdownxiaoshujiang/releases/download/v#{version}/Story-writer-osx64.zip"
  appcast 'https://github.com/suziwen/markdownxiaoshujiang/releases.atom',
          checkpoint: '0e42ac1435c0d1b3f82532dfd3e3c448b2a0bb31474088109c56be0205b2cb13'
  name 'Story Writer'
  homepage 'http://soft.xiaoshujiang.com/'

  app 'Story-writer.app'
end
