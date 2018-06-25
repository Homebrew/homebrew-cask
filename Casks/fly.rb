cask 'fly' do
  version '3.13.0'
  sha256 '4a47a960d6d75612374bba1b8348c18caeb63c8368efba5911e8824021669df6'

  url "https://github.com/concourse/concourse/releases/download/v#{version}/fly_darwin_amd64"
  appcast 'https://github.com/concourse/concourse/releases.atom'
  name 'fly'
  homepage 'https://github.com/concourse/fly'

  container type: :naked

  binary 'fly_darwin_amd64', target: 'fly'
end
