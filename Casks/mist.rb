cask 'mist' do
  version '0.9.2'
  sha256 '2480301ee8c94e791131b05f560523fc1aac24a8e65756173851a1dcf0abc8d3'

  url "https://github.com/ethereum/mist/releases/download/v#{version}/Mist-macosx-#{version.dots_to_hyphens}.dmg"
  appcast 'https://github.com/ethereum/mist/releases.atom',
          checkpoint: '57df8c5cd893fad8ce1da4771e54bf9890f7fba40065428c10299c53e7652088'
  name 'Mist'
  homepage 'https://github.com/ethereum/mist'

  app 'Mist.app'
end
