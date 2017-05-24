cask 'marvel' do
  version '5.1'
  sha256 '1bf9c4cdbe7a871cb12137216a01242d5e2d702a294f0baf6961d6feec31e477'

  # storage.googleapis.com/sketch-plugin was verified as official when first introduced to the cask
  url 'https://storage.googleapis.com/sketch-plugin/Marvel.zip'
  appcast 'https://storage.googleapis.com/sketch-plugin/app.xml',
          checkpoint: '82a6c7f0e343d95178e0e64360b84fe0338c6e80894d47fb85d8fc05322c8544'
  name 'Marvel'
  homepage 'https://marvelapp.com/'

  app 'Marvel.app'
end
