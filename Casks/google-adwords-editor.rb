cask 'google-adwords-editor' do
  version '11.5.9.0'
  sha256 'f04ad235ebd7a4893623f5c26e8c073d8710b4bbaf918d437a9a118fe7bbb86f'

  url "https://dl.google.com/adwords_editor/#{version}/Google_AdWords_Editor.dmg"
  name 'Google AdWords Editor'
  homepage 'https://www.google.com/intl/en/adwordseditor/'

  app 'Google AdWords Editor.app'
end
