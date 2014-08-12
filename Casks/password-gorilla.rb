class PasswordGorilla < Cask
  version '1.5.3.7.2'
  sha256 '4d026a5fa088fe9622cbe00c5811da2f360949c7cfb46ce6e4899a09645cb83a'

  url 'http://zdia.de/downloads/gorilla/gorilla15372.zip'
  homepage 'https://github.com/zdia/gorilla'

  link 'Password Gorilla.app'
  caveats <<-EOS.undent
    Password Gorilla must be run in 32-bit mode.
    Gatekeeper may need to be temporarily disabled for the first launch.
  EOS
end
