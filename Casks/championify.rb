cask 'championify' do
  version '2.0.5'
  sha256 '535a166078e499789db6ed714d552620e9558e8152e3caf2a9a43a036fae8070'

  url "https://github.com/dustinblackman/Championify/releases/download/#{version}/Championify-OSX-#{version}.dmg"
  appcast 'https://github.com/dustinblackman/Championify/releases.atom',
          checkpoint: 'e7d723dec6246c502e37fc8e4257c5d96b191601392afa8c47f2982ce6a697e8'
  name 'Championify'
  homepage 'https://github.com/dustinblackman/Championify/'

  app 'Championify.app'
end
