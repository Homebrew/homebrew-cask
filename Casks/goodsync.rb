cask 'goodsync' do
  version '10.5.8'
  sha256 '98fb97a8d726dd6a5acb73f56b3edb0e499b2e54f9f2283fd281fa98449f91fb'

  url "https://www.goodsync.com/download/goodsync-v#{version.major}-mac.dmg"
  appcast 'https://www.goodsync.com/download',
          checkpoint: 'a12feb047903fa12cb6aef6bbf2259ed20b50b718df03a098ffe251caa21d4d3'
  name 'GoodSync'
  homepage 'https://www.goodsync.com/'

  app 'GoodSync.app'
end
