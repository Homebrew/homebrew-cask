cask 'deltachat' do
  version '1.2.0'
  sha256 '8840b4ba42637801c8502b861bad971063d9c4bf2871d0da65acb6ea97cd87ca'

  # github.com/deltachat/deltachat-desktop was verified as official when first introduced to the cask
  url "https://github.com/deltachat/deltachat-desktop/releases/download/v#{version}/Delta.Chat-#{version}.dmg"
  appcast 'https://github.com/deltachat/deltachat-desktop/releases.atom'
  name 'Delta.Chat'
  homepage 'https://delta.chat/'

  app 'Delta.Chat.app'
end
