cask 'swimat' do
  version '1.6.1'
  sha256 '712719277aea8209bec2bea88438af3a391cacd7dd5a0b490b840868d4f3362d'

  url "https://github.com/Jintin/Swimat/releases/download/v#{version}/Swimat.zip"
  appcast 'https://github.com/Jintin/Swimat/releases.atom'
  name 'Swimat'
  homepage 'https://github.com/Jintin/Swimat'

  app 'Swimat.app'
end
