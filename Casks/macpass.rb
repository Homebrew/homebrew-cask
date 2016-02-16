cask 'macpass' do
  version '0.6.1-alpha'
  sha256 'f3e4944cb8ebc1da5f605482781f664c4fb7d3815c8354760d37dbc036e07701'

  # github.com/mstarke/MacPass was verified as official when first introduced to the cask
  url "https://github.com/mstarke/MacPass/releases/download/#{version}/MacPass-#{version}.zip"
  appcast 'https://github.com/mstarke/MacPass/releases.atom',
          checkpoint: 'fb3d2bfb6c2843f72b910f087c7d56b90c1ff3f8d38b717e469d79cb09093462'
  name 'MacPass'
  homepage 'https://mstarke.github.io/MacPass/'
  license :gpl

  app 'MacPass.app'
end
