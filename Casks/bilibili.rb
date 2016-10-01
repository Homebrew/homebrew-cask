cask 'bilibili' do
  version '2.47'
  sha256 '234a1db450d1e9768d4d83b3dd90baaf47823d2d9dbd21d5cde17991969e702d'

  url "https://github.com/typcn/bilibili-mac-client/releases/download/#{version}/Bilibili.dmg"
  appcast 'https://github.com/typcn/bilibili-mac-client/releases.atom',
          checkpoint: '33007f2ef2383f38337bc2c4948ece8bd3bf8972e8af8c841b93a0483e1ecfa8'
  name 'Bilibili'
  homepage 'https://github.com/typcn/bilibili-mac-client/'
  license :gpl

  auto_updates true

  app 'Bilibili.app'
end
