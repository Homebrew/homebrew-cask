cask 'story-writer' do
  version '3.2.0'
  sha256 '491d0418abfc79caf753b5291bcbd9133f33c2fbd945099dba52968c1c333b9b'

  # github.com/suziwen/markdownxiaoshujiang was verified as official when first introduced to the cask
  url "https://github.com/suziwen/markdownxiaoshujiang/releases/download/v#{version}/Story-writer-osx64.zip"
  appcast 'https://github.com/suziwen/markdownxiaoshujiang/releases.atom',
          checkpoint: '39dd9ac6bd55b0a98ec9efd160bbed229e28b836f56b4cbbb7dd318798d57a29'
  name 'Story Writer'
  homepage 'http://soft.xiaoshujiang.com/'

  app 'Story-writer.app'
end
