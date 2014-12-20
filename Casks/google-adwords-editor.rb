cask :v1 => 'google-adwords-editor' do
  version '11.0.0'
  sha256 '112bd8ba1789208da8c3200875d8719ec832d2533c299d3221a190cb98b4f7e7'

  url "https://dl.google.com/adwords_editor/#{version}/Google_AdWords_Editor.dmg"
  homepage 'https://www.google.com/intl/en/adwordseditor/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Google AdWords Editor.app'
end
