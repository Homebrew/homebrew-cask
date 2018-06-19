cask 'annotation-edit' do
  version '1.9.95.2'
  sha256 '3f8892a8103a305d11891063ab19a8e34bef588e98b6e9553ee7400373d15e2a'

  url 'http://www.zeitanker.com/common/Annotation_Edit.zip'
  appcast 'http://zeitanker.com/updates.rss'
  name 'Annotation Edit'
  homepage 'http://www.zeitanker.com/content/tools/zeitanker_tools/zeitanker_annotation_edit/'

  suite "Annotation Edit #{version.major_minor_patch}"
end
