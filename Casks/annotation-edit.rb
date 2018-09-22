cask 'annotation-edit' do
  version '1.9.99'
  sha256 'f1377b99ea0ae627dfc7fe0399d59f4475ccef7cf38adfbf46ec1bdbf2d517da'

  url 'http://www.zeitanker.com/common/Annotation_Edit.zip'
  appcast 'http://zeitanker.com/updates.rss'
  name 'Annotation Edit'
  homepage 'http://www.zeitanker.com/content/tools/zeitanker_tools/zeitanker_annotation_edit/'

  suite "Annotation Edit #{version}"
end
