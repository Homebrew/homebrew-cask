cask 'eaglefiler' do
  version '1.6.9'
  sha256 'e4e5c666fa93c1cef0d8067ed5f325f02cde496343a737edea7c89402cf0c954'

  url "https://c-command.com/downloads/EagleFiler-#{version}.dmg"
  name 'EagleFiler'
  homepage 'https://c-command.com/eaglefiler/'
  license :commercial

  app 'EagleFiler.app'
end
