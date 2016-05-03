cask 'pyfa' do
  version '1.21.1'
  sha256 '668046e0d79e868e55aee00e4d7350e2a2fa4eb1a18aee425f67f8c5641156a0'

  url "https://github.com/pyfa-org/Pyfa/releases/download/v#{version}/pyfa-#{version}-citadel-1.3-mac.zip"
  name 'pyfa'
  homepage 'https://github.com/pyfa-org/Pyfa'
  license :gpl

  app 'pyfa.app'
end
