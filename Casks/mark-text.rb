cask 'mark-text' do
  version '0.7.17'
  sha256 '3985a2ad8352c37c4202c9b2d61df92649ed0bf8f4bde15edd6ba9e1213787a7'

  # github.com/marktext/marktext was verified as official when first introduced to the cask
  url "https://github.com/marktext/marktext/releases/download/v#{version}/marktext-#{version}.dmg"
  appcast 'https://github.com/marktext/marktext/releases.atom',
          checkpoint: 'e8945da0456a433193c119a773d86a2424ebbc2f23b76f201c516d51c40e540c'
  name 'Mark Text'
  homepage 'https://marktext.github.io/website/'

  app 'Mark Text.app'
end
