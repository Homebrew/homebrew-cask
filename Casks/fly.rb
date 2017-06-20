cask 'fly' do
  version '3.2.1'
  sha256 '7d246a253dd4cb48884bb230ff29880bdfe0d8b630091c4664581aa8b7aca799'

  url "https://github.com/concourse/concourse/releases/download/v#{version}/fly_darwin_amd64"
  appcast 'https://github.com/concourse/concourse/releases.atom',
          checkpoint: '251d809f7487abb62f3b31833fe7f3060d37b0de05e2a967c05eccc5e3fd99f4'
  name 'fly'
  homepage 'https://github.com/concourse/fly'

  container type: :naked

  binary 'fly_darwin_amd64', target: 'fly'
end
