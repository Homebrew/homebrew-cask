cask 'moonlight' do
  version '1.1.1'
  sha256 '4aefe0af76804cdf9c9ca7b4c69802768001380e25762cebc57d5da38b07de26'

  # github.com/moonlight-stream/moonlight-qt was verified as official when first introduced to the cask
  url "https://github.com/moonlight-stream/moonlight-qt/releases/download/v#{version}/Moonlight-#{version}.dmg"
  appcast 'https://github.com/moonlight-stream/moonlight-qt/releases.atom'
  name 'Moonlight'
  homepage 'https://moonlight-stream.org/'

  depends_on macos: '>= :sierra'

  app 'Moonlight.app'
end
