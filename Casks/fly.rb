cask 'fly' do
  version '2.7.1'
  sha256 'de14aac9caa3c4080365b3a232249d093babf6b7163180ea9896612d88e5d126'

  url "https://github.com/concourse/concourse/releases/download/v#{version}/fly_darwin_amd64"
  appcast 'https://github.com/concourse/concourse/releases.atom',
          checkpoint: '6e0ecd3c23ebcf3ea15c90e9b78fff27414fd3616215750c8194a014a014e89b'
  name 'fly'
  homepage 'https://github.com/concourse/fly'

  container type: :naked

  binary 'fly_darwin_amd64', target: 'fly'
end
