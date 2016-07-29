cask 'google-adwords-editor' do
  version '11.3.3.0'
  sha256 'ec3725c96d6e1b9f4b8d59ee9d68d0fea22acfc1926f405436ed6175b7957f0b'

  url "https://dl.google.com/adwords_editor/#{version}/Google_AdWords_Editor.dmg"
  name 'Google AdWords Editor'
  homepage 'https://www.google.com/intl/en/adwordseditor/'
  license :gratis

  app 'Google AdWords Editor.app'
end
