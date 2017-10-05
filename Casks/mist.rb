cask 'mist' do
  version '0.9.1'
  sha256 '0c8a03232fbb8493e8b146812d0d553e49b8054bd7a7801b1e5046b901ab5e29'

  url "https://github.com/ethereum/mist/releases/download/v#{version}/Mist-macosx-#{version.dots_to_hyphens}.dmg"
  appcast 'https://github.com/ethereum/mist/releases.atom',
          checkpoint: 'dcb48d1e593f132f3c46cfcf9488a4fb8ce4aaa0c74ab13805eb56e1a341259a'
  name 'Mist'
  homepage 'https://github.com/ethereum/mist'

  app 'Mist.app'
end
