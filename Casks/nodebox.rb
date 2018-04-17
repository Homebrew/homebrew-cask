cask 'nodebox' do
  version '3.0.51'
  sha256 '2187ebaa849de93f54c5550529678a8a160b06cf6186e8d21a66fc43f395e629'

  # github.com/nodebox/nodebox was verified as official when first introduced to the cask
  url "https://github.com/nodebox/nodebox/releases/download/v#{version}/NodeBox-#{version}.zip"
  appcast 'https://www.nodebox.net/node/release-notes.html',
          checkpoint: '50038e9f76f0ca9a5dd0860240969ea736fbb70ca12137270f5a4dbbd960c3f9'
  name 'NodeBox'
  homepage 'https://www.nodebox.net/node/'

  depends_on macos: '>= :mountain_lion'

  app 'NodeBox.app'
end
