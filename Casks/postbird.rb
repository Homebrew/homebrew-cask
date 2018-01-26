cask 'postbird' do
  version '0.7.0'
  sha256 '105145077f78498a0746f91d045c2186a3d1dd9568dea21e592fdef881df1c49'

  url "https://github.com/Paxa/postbird/releases/download/#{version}/Postbird-#{version}.dmg"
  appcast 'https://github.com/Paxa/postbird/releases.atom',
          checkpoint: '211d4201b11abe94195234492bc3b0fae6c64005fb76157b0d06b691645f5e8a'
  name 'Postbird'
  homepage 'https://github.com/Paxa/postbird'

  app 'Postbird.app'
end
