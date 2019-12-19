cask 'moonlight' do
  version '1.2.0'
  sha256 'd27c185f031986050a13b0d2983c87c1b6dc8af0b3f50570788c0423a1fe1204'

  # github.com/moonlight-stream/moonlight-qt was verified as official when first introduced to the cask
  url "https://github.com/moonlight-stream/moonlight-qt/releases/download/v#{version}/Moonlight-#{version}.dmg"
  appcast 'https://github.com/moonlight-stream/moonlight-qt/releases.atom'
  name 'Moonlight'
  homepage 'https://moonlight-stream.org/'

  depends_on macos: '>= :sierra'

  app 'Moonlight.app'
end
