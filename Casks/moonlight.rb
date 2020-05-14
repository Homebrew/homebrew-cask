cask 'moonlight' do
  version '2.0.0'
  sha256 '1c3f686cb1e2014d38ebfacf43a29744d22248d423abc9ee93945a4221ec7218'

  # github.com/moonlight-stream/moonlight-qt/ was verified as official when first introduced to the cask
  url "https://github.com/moonlight-stream/moonlight-qt/releases/download/v#{version}/Moonlight-#{version}.dmg"
  appcast 'https://github.com/moonlight-stream/moonlight-qt/releases.atom'
  name 'Moonlight'
  homepage 'https://moonlight-stream.org/'

  depends_on macos: '>= :sierra'

  app 'Moonlight.app'
end
