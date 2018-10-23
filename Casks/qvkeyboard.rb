cask 'qvkeyboard' do
  version :latest
  sha256 :no_check

  url "https://github.com/qvkeyboard/qvkeyboard/releases/download/#{version}/MachOExplorer.#{version}.dmg"
  appcast 'https://github.com/qvkeyboard/qvkeyboard/releases.atom'
  name 'QVKeyboardClient'
  homepage 'https://qvkeyboard.github.io'

  app 'QVKeyboardClient.app'
end
