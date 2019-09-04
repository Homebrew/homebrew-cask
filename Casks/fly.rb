cask 'fly' do
  version '5.4.1'
  sha256 '12479a5830575e6c5b76f7dc3b9d064e1a9234671246a5a998a5dcd5cbad4c92'

  url "https://github.com/concourse/concourse/releases/download/v#{version}/fly-#{version}-darwin-amd64.tgz"
  appcast 'https://github.com/concourse/concourse/releases.atom'
  name 'fly'
  homepage 'https://github.com/concourse/concourse'

  binary 'fly'
end
