cask 'chatty' do
  version '0.8.2'
  sha256 '32f1b544bb140852f9e2bf6ce0f55bbf50dd5d80880a35005303f45fe266cd91'

  url "https://github.com/chatty/chatty/releases/download/v#{version}/Chatty_#{version}.zip"
  appcast 'https://github.com/chatty/chatty/releases.atom',
          checkpoint: '56ed9d68dca565405beb5d0b4e9a5a788fee9a1942adb50ad4127daaf6d55fea'
  name 'Chatty'
  homepage 'https://chatty.github.io'
  license :mit

  app 'Chatty.jar'

  zap delete: '~/.chatty'

  caveats do
    depends_on_java('7+')
  end
end
