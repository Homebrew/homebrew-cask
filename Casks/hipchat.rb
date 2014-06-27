class Hipchat < Cask
  version 'latest'
  sha256 :no_check
  
  url 'https://www.hipchat.com/downloads/latest/mac'
  appcast 'https://www.hipchat.com/release_notes/appcast/mac'
  homepage 'https://www.hipchat.com/'

  link 'HipChat.app'
end
