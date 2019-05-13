cask 'annotation-edit' do
  version '1.9.99.21'
  sha256 'd7c4832cc5c65a4ac2a98fe7567dd23a7dab16fac4b55fee335b6e78bd5d4076'

  url 'http://www.zeitanker.com/common/Annotation_Edit.zip'
  appcast 'http://zeitanker.com/updates.rss'
  name 'Annotation Edit'
  homepage 'http://www.zeitanker.com/content/tools/zeitanker_tools/zeitanker_annotation_edit/'

  suite "Annotation Edit #{version}"
end
