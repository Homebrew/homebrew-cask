cask 'annotation-edit' do
  version '1.9.99.5'
  sha256 '3a79bcd4b778aef09e8c33973b4a66cab8e906c1be6fa4243789ed21f005f3a7'

  url 'http://www.zeitanker.com/common/Annotation_Edit.zip'
  appcast 'http://zeitanker.com/updates.rss'
  name 'Annotation Edit'
  homepage 'http://www.zeitanker.com/content/tools/zeitanker_tools/zeitanker_annotation_edit/'

  suite "Annotation Edit #{version}"
end
