cask 'fly' do
  version '5.3.0'
  sha256 '33416ed108a45fe7462947914e3ac0b3a5372854ef1b621ae1cc19676fb1e375'

  url "https://github.com/concourse/concourse/releases/download/v#{version}/fly-#{version}-darwin-amd64.tgz"
  appcast 'https://github.com/concourse/concourse/releases.atom'
  name 'fly'
  homepage 'https://github.com/concourse/concourse'

  binary 'fly'
end
