cask :v1 => 'nide' do
  version '0.2.0'
  sha256 '95a83ded032c26f0235924035efd1b345997b8fbb578d315099a918d03427b2b'

  url "https://github.com/downloads/Coreh/nide/nide-v#{version}.dmg"
  homepage 'http://coreh.github.io/nide/'
  license :oss

  app 'Nide.app'
end
