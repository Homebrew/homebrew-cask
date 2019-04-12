cask 'annotation-edit' do
  version '1.9.99.20'
  sha256 'e4125bc71ef261b16a992ee2e3dd762a8d756f7d553d26d11438d586ae08b6c6'

  url 'http://www.zeitanker.com/common/Annotation_Edit.zip'
  appcast 'http://zeitanker.com/updates.rss'
  name 'Annotation Edit'
  homepage 'http://www.zeitanker.com/content/tools/zeitanker_tools/zeitanker_annotation_edit/'

  suite "Annotation Edit #{version}"
end
