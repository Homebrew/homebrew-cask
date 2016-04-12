cask 'bilibili' do
  version '2.40'
  sha256 'ac201a1913d5daf472ab159cfb3e45e4ce6e3bd8e2435261a72aac3a3582c59e'

  url "https://github.com/typcn/bilibili-mac-client/releases/download/#{version}/Bilibili.dmg.zip"
  appcast 'https://github.com/typcn/bilibili-mac-client/releases.atom',
          checkpoint: '187363a48ee039afa1a19779a9f2b7d8167da922845fe65c4c078afecc16419d'
  name 'Bilibili'
  homepage 'https://github.com/typcn/bilibili-mac-client/'
  license :gpl

  container nested: 'Bilibili.dmg'

  app 'Bilibili.app'
end
