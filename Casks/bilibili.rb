cask 'bilibili' do
  version '2.44'
  sha256 '46bac228bc463b20d561c28694c1c118a3599474b6151258abbe1aafe2922c9c'

  url "https://github.com/typcn/bilibili-mac-client/releases/download/#{version}/Bilibili.dmg"
  appcast 'https://github.com/typcn/bilibili-mac-client/releases.atom',
          checkpoint: 'db42a90b85147fe54d239aa053cf6483669ad8d58b2e398eb68486fc6a270994'
  name 'Bilibili'
  homepage 'https://github.com/typcn/bilibili-mac-client/'
  license :gpl

  auto_updates true

  app 'Bilibili.app'
end
