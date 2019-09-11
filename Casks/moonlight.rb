cask 'moonlight' do
  version '1.1.0'
  sha256 'fdbda47439f97b554f55ba3919b23cbf10c1765ecbb2eca249330c29eda1fc2c'

  # github.com/moonlight-stream/moonlight-qt was verified as official when first introduced to the cask
  url "https://github.com/moonlight-stream/moonlight-qt/releases/download/v#{version}/Moonlight-#{version}.dmg"
  appcast 'https://github.com/moonlight-stream/moonlight-qt/releases.atom'
  name 'Moonlight'
  homepage 'https://moonlight-stream.org/'

  depends_on macos: '>= :sierra'

  app 'Moonlight.app'
end
