cask 'brave' do
  version '0.7.10dev'
  sha256 '92d21d5223369424baff859b5a38bb72d8b5a7c0b9b4ecf7242455047da64d5a'

  url "https://github.com/brave/browser-laptop/releases/download/v#{version}/Brave.dmg"
  name 'Brave'
  homepage 'http://brave.com'
  license :mpl

  app 'Brave.app'
end
