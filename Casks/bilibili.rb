cask 'bilibili' do
  version '2.40'
  sha256 'a4965d6368d80456047e4d8ecf79ee12768b7a7d4ec5d4b50b1f6f4ce9590250'

  url "https://github.com/typcn/bilibili-mac-client/releases/download/#{version}/Bilibili.dmg.zip"
  appcast 'https://github.com/typcn/bilibili-mac-client/releases.atom',
          checkpoint: '187363a48ee039afa1a19779a9f2b7d8167da922845fe65c4c078afecc16419d'
  name 'Bilibili'
  homepage 'https://github.com/typcn/bilibili-mac-client/'
  license :gpl

  container nested: 'Bilibili.dmg'

  app 'Bilibili.app'
end
