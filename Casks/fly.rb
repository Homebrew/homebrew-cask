cask 'fly' do
  version '5.6.0'
  sha256 '307d420acc56556429ea2045cb688b8e222438e6b60497cf272fdcbf36781328'

  url "https://github.com/concourse/concourse/releases/download/v#{version}/fly-#{version}-darwin-amd64.tgz"
  appcast 'https://github.com/concourse/concourse/releases.atom'
  name 'fly'
  homepage 'https://github.com/concourse/concourse'

  binary 'fly'
end
