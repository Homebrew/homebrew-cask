class Hipchat < Cask
  url 'https://www.hipchat.com/downloads/latest/mac'
  appcast 'https://www.hipchat.com/release_notes/appcast/mac'
  homepage 'https://www.hipchat.com/'
  version 'latest'
  sha256 :no_check
  link 'HipChat.app'
end
