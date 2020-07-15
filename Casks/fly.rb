cask 'fly' do
  version '6.3.0'
  sha256 'fb63f29121dcf6d9ab73f421e41d14551b00c6f2d1387c9c4ff17aa61b038444'

  url "https://github.com/concourse/concourse/releases/download/v#{version}/fly-#{version}-darwin-amd64.tgz"
  appcast 'https://github.com/concourse/concourse/releases.atom'
  name 'fly'
  homepage 'https://github.com/concourse/concourse'

  binary 'fly'
end
