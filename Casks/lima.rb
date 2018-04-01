cask 'lima' do
  version '1.4.6'
  sha256 '38a5929b1cf1d503f79cc5738f546f5cd97ffcb6f54e5c9993de39501cc33a61'

  url "https://update.api.meetlima.com/downloads/osx/dist/Lima_#{version}.dmg"
  name 'Lima'
  homepage 'https://meetlima.com/'

  app 'Lima.app'
end
