cask 'fly' do
  version '3.8.0'
  sha256 'fe00de8aadc09c8a4395fd03fa99d1e371eb26214a3ffc7aa79df94d4d8dad91'

  url "https://github.com/concourse/concourse/releases/download/v#{version}/fly_darwin_amd64"
  appcast 'https://github.com/concourse/concourse/releases.atom',
          checkpoint: 'ca61b5b64d280d6c83a22631d981071a67f6a7115eda6da506fe6f09def66fac'
  name 'fly'
  homepage 'https://github.com/concourse/fly'

  container type: :naked

  binary 'fly_darwin_amd64', target: 'fly'
end
