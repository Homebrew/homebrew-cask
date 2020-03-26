cask 'minimalmidiplayer' do
  version '1.10'
  sha256 '79152043994fdcf10f6bbd019be18f31e6c87bf51d1277e390a4fa788b9c7c15'

  url 'https://github.com/SamusAranX/MinimalMIDIPlayer/releases/download/v1.10/MinimalMIDIPlayer.zip'
  appcast 'https://github.com/SamusAranX/MinimalMIDIPlayer/releases.atom'
  name 'MinimalMIDIPlayer'
  homepage 'https://github.com/SamusAranX/MinimalMIDIPlayer'

  app 'MinimalMIDIPlayer.app'
end
