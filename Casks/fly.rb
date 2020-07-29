cask 'fly' do
  version '6.1.0'
  sha256 '1e33de1f8f845283b73f664a9a8bc6fb8dbf6b2d2d973e89ff44b7298f2bf7f2'

  url "https://github.com/concourse/concourse/releases/download/v#{version}/fly-#{version}-darwin-amd64.tgz"
  appcast 'https://github.com/concourse/concourse/releases.atom'
  name 'fly'
  homepage 'https://github.com/concourse/concourse'

  binary 'fly'
end
