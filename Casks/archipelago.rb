cask 'archipelago' do
  version :latest
  sha256 :no_check

  url 'https://archipelago-terminal.herokuapp.com/download/osx'
  name 'Archipelago'
  homepage 'https://github.com/npezza93/archipelago'

  app 'Archipelago.app'
end
