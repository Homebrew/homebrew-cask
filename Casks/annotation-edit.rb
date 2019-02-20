cask 'annotation-edit' do
  version '1.9.99.14'
  sha256 'dbd267c3b3d87b7ee8731b4870f9f09978771373e7e048cd02f94b556f2a1c85'

  url 'http://www.zeitanker.com/common/Annotation_Edit.zip'
  appcast 'http://zeitanker.com/updates.rss'
  name 'Annotation Edit'
  homepage 'http://www.zeitanker.com/content/tools/zeitanker_tools/zeitanker_annotation_edit/'

  suite "Annotation Edit #{version}"
end
