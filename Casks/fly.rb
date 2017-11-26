cask 'fly' do
  version '3.6.0'
  sha256 '1d32f0d59a04f8680d62c7db156bde413c8ff423dcfe06d3e4788e482e071f51'

  url "https://github.com/concourse/concourse/releases/download/v#{version}/fly_darwin_amd64"
  appcast 'https://github.com/concourse/concourse/releases.atom',
          checkpoint: '8213af44f8a5813996d978aed99eeb1a9193c1bc3357dd4e0e703b384177931d'
  name 'fly'
  homepage 'https://github.com/concourse/fly'

  container type: :naked

  binary 'fly_darwin_amd64', target: 'fly'
end
