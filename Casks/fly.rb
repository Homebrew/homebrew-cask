cask 'fly' do
  version '5.5.1'
  sha256 '1ea4bdc057270c9b58411c5750d65014b9931d541ca257f260676e25e55351d4'

  url "https://github.com/concourse/concourse/releases/download/v#{version}/fly-#{version}-darwin-amd64.tgz"
  appcast 'https://github.com/concourse/concourse/releases.atom'
  name 'fly'
  homepage 'https://github.com/concourse/concourse'

  binary 'fly'
end
