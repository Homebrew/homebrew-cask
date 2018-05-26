cask 'annotation-edit' do
  version '1.9.95'
  sha256 '415ffcd9d4b5e6ecec1efe708a222b7ac6523ed868199059703e325f889d8a23'

  url 'http://www.zeitanker.com/common/Annotation_Edit.zip'
  appcast 'http://zeitanker.com/updates.rss',
          checkpoint: 'c18d91e803298f59dfa72487915d6169188b23e0404329a2d409c65d2c4f657e'
  name 'Annotation Edit'
  homepage 'http://www.zeitanker.com/content/tools/zeitanker_tools/zeitanker_annotation_edit/'

  suite "Annotation Edit #{version.major_minor_patch}"
end
