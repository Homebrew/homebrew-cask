cask 'fly' do
  version '5.1.0'
  sha256 'd0fb842725636536355c67821e7a7fe2be90a41299ae1324b747f50cd88ac9c8'

  url "https://github.com/concourse/concourse/releases/download/v#{version}/fly-#{version}-darwin-amd64.tgz"
  appcast 'https://github.com/concourse/concourse/releases.atom'
  name 'fly'
  homepage 'https://github.com/concourse/concourse'

  binary 'fly'
end
