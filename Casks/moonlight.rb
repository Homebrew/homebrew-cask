cask 'moonlight' do
  version '2.1.0'
  sha256 '31a216bb7428deaa67dbe164ff2ac0aff33b408b2d4c509f0a1fe55783789e19'

  # github.com/moonlight-stream/moonlight-qt/ was verified as official when first introduced to the cask
  url "https://github.com/moonlight-stream/moonlight-qt/releases/download/v#{version}/Moonlight-#{version}.dmg"
  appcast 'https://github.com/moonlight-stream/moonlight-qt/releases.atom'
  name 'Moonlight'
  homepage 'https://moonlight-stream.org/'

  depends_on macos: '>= :sierra'

  app 'Moonlight.app'
end
