cask 'annotation-edit' do
  version '1.9.99.16'
  sha256 'eacd4f0fe5ef40339dfe1cea5e265b8e6ac4b20d34de2da65ca72a215aeeb02a'

  url 'http://www.zeitanker.com/common/Annotation_Edit.zip'
  appcast 'http://zeitanker.com/updates.rss'
  name 'Annotation Edit'
  homepage 'http://www.zeitanker.com/content/tools/zeitanker_tools/zeitanker_annotation_edit/'

  suite "Annotation Edit #{version}"
end
