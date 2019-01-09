cask 'mark-text' do
  version '0.13.65'
  sha256 '674e1a2fe3290166786233f1df43b4c695a66dac0246f249f71ac04e0d123099'

  # github.com/marktext/marktext was verified as official when first introduced to the cask
  url "https://github.com/marktext/marktext/releases/download/v#{version}/marktext-#{version}.dmg"
  appcast 'https://github.com/marktext/marktext/releases.atom'
  name 'Mark Text'
  homepage 'https://marktext.github.io/website/'

  app 'Mark Text.app'
end
