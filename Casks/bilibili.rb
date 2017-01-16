cask 'bilibili' do
  version '2.49'
  sha256 'cedfa534e3f6f28aabd6694cdcccc71abe6a441d27930a4068c452f1f0732a50'

  url "https://github.com/typcn/bilibili-mac-client/releases/download/#{version}/Bilibili.dmg"
  appcast 'https://github.com/typcn/bilibili-mac-client/releases.atom',
          checkpoint: '97ac13089f454748cc46416d60988ffbbc5b42667c4bbb3849200e999aea2a8c'
  name 'Bilibili'
  homepage 'https://github.com/typcn/bilibili-mac-client/'

  auto_updates true

  app 'Bilibili.app'
end
