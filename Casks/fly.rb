cask 'fly' do
  version '3.9.0'
  sha256 'ce4a12e136cff4c2c55bee9a7ded7b05ac6ef867369e947ddd525c61392e2051'

  url "https://github.com/concourse/concourse/releases/download/v#{version}/fly_darwin_amd64"
  appcast 'https://github.com/concourse/concourse/releases.atom',
          checkpoint: '8df2559bb7359c4419ba477e9d2211dae1ecbca2656d6e869694a566ebfe796a'
  name 'fly'
  homepage 'https://github.com/concourse/fly'

  container type: :naked

  binary 'fly_darwin_amd64', target: 'fly'
end
