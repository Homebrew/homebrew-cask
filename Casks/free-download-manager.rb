cask 'free-download-manager' do
  version '5.1.24'
  sha256 'e33bd205b9f326e375ce5a354396324d80266afd2a76b79d35c8fa685a1493a3'

  url "http://files2.freedownloadmanager.org/#{version.major}/#{version.major_minor}-latest/fdm.dmg"
  name 'Free Download Manager'
  homepage 'http://www.freedownloadmanager.org/landing5.htm'

  app 'Free Download Manager.app'
end
