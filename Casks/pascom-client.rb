cask 'pascom-client' do
  version '46.R152_f23040b'
  sha256 'd54b3417289981008c0946a0f3125c3bb0ce3cac057a41116d13d78e1af1b76a'

  url "https://download.pascom.net/release-archive/client/stable/pascom%20Client-#{version}.dmg"
  name 'pascom Client'
  homepage 'https://www.pascom.net/'

  app 'pascom Client.app'
end
