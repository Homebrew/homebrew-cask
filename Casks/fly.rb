cask 'fly' do
  version '4.2.1'
  sha256 'b31665b68f7158a8c4a6fefa97272781e8e28852e0163f47161b3010fd0ae8c0'

  url "https://github.com/concourse/concourse/releases/download/v#{version}/fly_darwin_amd64"
  appcast 'https://github.com/concourse/concourse/releases.atom'
  name 'fly'
  homepage 'https://github.com/concourse/fly'

  container type: :naked

  binary 'fly_darwin_amd64', target: 'fly'
end
