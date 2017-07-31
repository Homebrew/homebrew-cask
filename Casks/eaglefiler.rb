cask 'eaglefiler' do
  version '1.8'
  sha256 'c33eee9a919ca730f70dfe05f0ab88bb4173422d53f6efa5b2af21d62a286970'

  url "https://c-command.com/downloads/EagleFiler-#{version}.dmg"
  name 'EagleFiler'
  homepage 'https://c-command.com/eaglefiler/'

  app 'EagleFiler.app'
end
