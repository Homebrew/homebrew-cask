cask :v1 => 'google-adwords-editor' do
  version '11.0.3'
  sha256 '0294ef3fceff0cad0bc954c24afb20af36c01f8cbd4cc15e9aee43565dbb44bf'

  url "https://dl.google.com/adwords_editor/#{version}/Google_AdWords_Editor.dmg"
  name 'Google AdWords Editor'
  homepage 'https://www.google.com/intl/en/adwordseditor/'
  license :gratis
  tags :vendor => 'Google'

  app 'Google AdWords Editor.app'
end
