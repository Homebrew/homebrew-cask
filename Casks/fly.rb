cask 'fly' do
  version '3.11.0'
  sha256 'e9e07f78f2fa013d6c57891fda8ec7ad3081ebe236ea3d0f53f52a004db7001b'

  url "https://github.com/concourse/concourse/releases/download/v#{version}/fly_darwin_amd64"
  appcast 'https://github.com/concourse/concourse/releases.atom',
          checkpoint: '28d13d7e815ca8d5ed08020a32014d3566befcbed8184f1b856ea57a7efbbe71'
  name 'fly'
  homepage 'https://github.com/concourse/fly'

  container type: :naked

  binary 'fly_darwin_amd64', target: 'fly'
end
