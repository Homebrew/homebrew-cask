cask 'moonlight' do
  version '1.0.1'
  sha256 '7ed0d2438cb615ec8732c4c46416e26cf4f3929064dc9e73c6c8e3d554cbaaa9'

  # github.com/moonlight-stream/moonlight-qt was verified as official when first introduced to the cask
  url "https://github.com/moonlight-stream/moonlight-qt/releases/download/v#{version}/Moonlight-#{version}.dmg"
  appcast 'https://github.com/moonlight-stream/moonlight-qt/releases.atom'
  name 'Moonlight'
  homepage 'https://moonlight-stream.org/'

  depends_on macos: '>= :sierra'

  app 'Moonlight.app'
end
