cask :v1 => 'grammarly' do
  version :latest
  sha256 :no_check

  url 'http://download-editor.grammarly.com/osx/Grammarly.dmg'
  name 'Grammarly'
  homepage 'https://grammarly.com/'
  license :closed

  app 'Grammarly.app'
end
