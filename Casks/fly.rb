cask 'fly' do
  version '6.0.0'
  sha256 'adf5925e0f13d392e034035b6efd063df680515aa984c237f85725570b69ff72'

  url "https://github.com/concourse/concourse/releases/download/v#{version}/fly-#{version}-darwin-amd64.tgz"
  appcast 'https://github.com/concourse/concourse/releases.atom'
  name 'fly'
  homepage 'https://github.com/concourse/concourse'

  binary 'fly'
end
