cask 'annotation-edit' do
  version '1.9.99.15'
  sha256 'bbcf4149620391fa023b450a08d9d28485c322bc58db2f040674975728ddd5b6'

  url 'http://www.zeitanker.com/common/Annotation_Edit.zip'
  appcast 'http://zeitanker.com/updates.rss'
  name 'Annotation Edit'
  homepage 'http://www.zeitanker.com/content/tools/zeitanker_tools/zeitanker_annotation_edit/'

  suite "Annotation Edit #{version}"
end
