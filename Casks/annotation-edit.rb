cask 'annotation-edit' do
  version '1.9.95.5'
  sha256 '5cdc22a84303643223b10e79a815a24c8de1648a44ec82b65ac64392a0b41eaf'

  url 'http://www.zeitanker.com/common/Annotation_Edit.zip'
  appcast 'http://zeitanker.com/updates.rss'
  name 'Annotation Edit'
  homepage 'http://www.zeitanker.com/content/tools/zeitanker_tools/zeitanker_annotation_edit/'

  suite "Annotation Edit #{version}"
end
