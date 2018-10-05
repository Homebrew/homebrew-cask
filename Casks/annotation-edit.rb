cask 'annotation-edit' do
  version '1.9.99.3'
  sha256 '47c9d8087885051c5deec684f0a0fac146c02cb55f8a073de2ec0df4292fe8bb'

  url 'http://www.zeitanker.com/common/Annotation_Edit.zip'
  appcast 'http://zeitanker.com/updates.rss'
  name 'Annotation Edit'
  homepage 'http://www.zeitanker.com/content/tools/zeitanker_tools/zeitanker_annotation_edit/'

  suite "Annotation Edit #{version}"
end
