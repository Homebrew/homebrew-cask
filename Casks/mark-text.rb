cask 'mark-text' do
  version '0.10.21'
  sha256 'c65b64c46ce30d522608927a827417e37687f0cee7c96570ac942bb1c2b0cd36'

  # github.com/marktext/marktext was verified as official when first introduced to the cask
  url "https://github.com/marktext/marktext/releases/download/v#{version}/marktext-#{version}.dmg"
  appcast 'https://github.com/marktext/marktext/releases.atom',
          checkpoint: '93a9a60b21bfc925c2165b8832a5559553d6cc079c177b3b55c104268aab82c6'
  name 'Mark Text'
  homepage 'https://marktext.github.io/website/'

  app 'Mark Text.app'
end
