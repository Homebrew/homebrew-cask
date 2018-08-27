cask 'fly' do
  version '4.0.0'
  sha256 '5f8e18c84d4301e11290651127a1238a87f55fb16fd1ba48486a858778101888'

  url "https://github.com/concourse/concourse/releases/download/v#{version}/fly_darwin_amd64"
  appcast 'https://github.com/concourse/concourse/releases.atom'
  name 'fly'
  homepage 'https://github.com/concourse/fly'

  container type: :naked

  binary 'fly_darwin_amd64', target: 'fly'
end
