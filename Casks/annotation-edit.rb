cask 'annotation-edit' do
  version '1.9.95.2'
  sha256 'ff43175b4f726b323b31aec669213aa72400003435518b4f1672a96bf159ef8b'

  url 'http://www.zeitanker.com/common/Annotation_Edit.zip'
  appcast 'http://zeitanker.com/updates.rss'
  name 'Annotation Edit'
  homepage 'http://www.zeitanker.com/content/tools/zeitanker_tools/zeitanker_annotation_edit/'

  suite "Annotation Edit #{version}"
end
