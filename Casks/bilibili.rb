cask 'bilibili' do
  version '2.40'
  sha256 'a4965d6368d80456047e4d8ecf79ee12768b7a7d4ec5d4b50b1f6f4ce9590250'

  url "https://github.com/typcn/bilibili-mac-client/releases/download/#{version}/Bilibili.dmg.zip"
  appcast 'https://github.com/typcn/bilibili-mac-client/releases.atom',
          checkpoint: 'b728fd42ebb035ff90f01b2171f46b9fc0e42b5aa15117dfd4d04840e85a98c8'
  name 'Bilibili'
  homepage 'https://github.com/typcn/bilibili-mac-client/'
  license :gpl

  container nested: 'Bilibili.dmg'

  app 'Bilibili.app'
end
