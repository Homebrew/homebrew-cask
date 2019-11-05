cask 'fly' do
  version '5.7.0'
  sha256 'efa0d9760ac0c6b02088b2c94a0389e62cacb6fddd55775b41661dcfd92ff856'

  url "https://github.com/concourse/concourse/releases/download/v#{version}/fly-#{version}-darwin-amd64.tgz"
  appcast 'https://github.com/concourse/concourse/releases.atom'
  name 'fly'
  homepage 'https://github.com/concourse/concourse'

  binary 'fly'
end
