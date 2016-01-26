cask 'grammarly' do
  version :latest
  sha256 :no_check

  url 'https://download-editor.grammarly.com/osx/Grammarly.dmg'
  name 'Grammarly'
  homepage 'https://grammarly.com/'
  license :closed

  app 'Grammarly.app'
end
