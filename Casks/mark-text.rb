cask 'mark-text' do
  version '0.13.50'
  sha256 '8d665381b98eab6adc1ef0b8ad63807a3f3ac10326788d527f4c09d74e60523f'

  # github.com/marktext/marktext was verified as official when first introduced to the cask
  url "https://github.com/marktext/marktext/releases/download/v#{version}/marktext-#{version}.dmg"
  appcast 'https://github.com/marktext/marktext/releases.atom'
  name 'Mark Text'
  homepage 'https://marktext.github.io/website/'

  app 'Mark Text.app'
end
