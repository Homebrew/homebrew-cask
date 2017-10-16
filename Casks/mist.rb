cask 'mist' do
  version '0.9.2'
  sha256 '2480301ee8c94e791131b05f560523fc1aac24a8e65756173851a1dcf0abc8d3'

  url "https://github.com/ethereum/mist/releases/download/v#{version}/Mist-macosx-#{version.dots_to_hyphens}.dmg"
  appcast 'https://github.com/ethereum/mist/releases.atom',
          checkpoint: 'fc6d21f99bbadc8c5c225e7af948804f8e6eba4c3d054b69ae7553b3be4bd7ff'
  name 'Mist'
  homepage 'https://github.com/ethereum/mist'

  app 'Mist.app'
end
