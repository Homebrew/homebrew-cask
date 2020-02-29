cask 'moonlight' do
  version '1.2.1'
  sha256 'e93ebbd3954763653262ac6dc955c340a8ae1d8273fda49cc9f6f48c4c9e6956'

  # github.com/moonlight-stream/moonlight-qt was verified as official when first introduced to the cask
  url "https://github.com/moonlight-stream/moonlight-qt/releases/download/v#{version}/Moonlight-#{version}.dmg"
  appcast 'https://github.com/moonlight-stream/moonlight-qt/releases.atom'
  name 'Moonlight'
  homepage 'https://moonlight-stream.org/'

  depends_on macos: '>= :sierra'

  app 'Moonlight.app'
end
