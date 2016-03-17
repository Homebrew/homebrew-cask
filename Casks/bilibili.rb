cask 'bilibili' do
  version '2.37'
  sha256 '3fe253e7bdc532345b58af0c5ee90a1f4697bc1a57f98d0d93aff3f4fb623b6c'

  url "https://github.com/typcn/bilibili-mac-client/releases/download/#{version}/Bilibili.dmg.zip"
  appcast 'https://github.com/typcn/bilibili-mac-client/releases.atom',
          checkpoint: 'f9b80e40baf15e7993d2f6955e1f9fd0abb58c8977d0177e464cc7472d0ab8aa'
  name 'Bilibili'
  homepage 'https://github.com/typcn/bilibili-mac-client/'
  license :gpl

  container nested: 'Bilibili.dmg'

  app 'Bilibili.app'
end
