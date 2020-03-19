cask 'fly' do
  version '5.8.0'
  sha256 '8e1b4e3a6fdc29878010ba9ee59f8df182e0a33c0551f0ad77f65e242a4fe769'

  url "https://github.com/concourse/concourse/releases/download/v#{version}/fly-#{version}-darwin-amd64.tgz"
  appcast 'https://github.com/concourse/concourse/releases.atom'
  name 'fly'
  homepage 'https://github.com/concourse/concourse'

  binary 'fly'
end
