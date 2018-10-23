cask 'qvkeyboard' do
  version '1.2.9'
  sha256 :no_check

  url "https://github.com/qvkeyboard/qvkeyboard/releases/download/#{version}/QVKeyboardClient.#{version}.dmg"
  appcast 'https://github.com/qvkeyboard/qvkeyboard/releases.atom'
  name 'QVKeyboardClient'
  homepage 'https://qvkeyboard.github.io/'

  app 'QVKeyboardClient.app'
end
