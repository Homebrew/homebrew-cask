cask 'google-adwords-editor' do
  version '11.1.3'
  sha256 '3fe702bb8edb10a214d0c2feefe4a0da8a2e7a8555581f6414de9a2807a0440a'

  url "https://dl.google.com/adwords_editor/#{version}/Google_AdWords_Editor.dmg"
  name 'Google AdWords Editor'
  homepage 'https://www.google.com/intl/en/adwordseditor/'
  license :gratis

  app 'Google AdWords Editor.app'
end
