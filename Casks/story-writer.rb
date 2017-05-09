cask 'story-writer' do
  version '3.0.1'
  sha256 '99778c54d8c495dc5d5d499806e4bfbd5863e928d94c53b5b34f142dfeb81fa7'

  # github.com/suziwen/markdownxiaoshujiang was verified as official when first introduced to the cask
  url "https://github.com/suziwen/markdownxiaoshujiang/releases/download/v#{version}/Story-writer-osx64.zip"
  appcast 'https://github.com/suziwen/markdownxiaoshujiang/releases.atom',
          checkpoint: '970b077bc463a07a9823a343b3eff2ee20b4f6f3799fd5435f3be559e1847484'
  name 'Story Writer'
  homepage 'http://soft.xiaoshujiang.com/'

  app 'Story-writer.app'
end
