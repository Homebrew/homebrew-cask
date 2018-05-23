cask 'annotation-edit' do
  version '1.9.94'
  sha256 '7ce5666636f950c6720d2c949337bfeb408769aadd2a9c54b510bd1dafce3cfe'

  url 'http://www.zeitanker.com/common/Annotation_Edit.zip'
  appcast 'http://zeitanker.com/updates.rss',
          checkpoint: 'cf288c041abf8edd02494b48f2ff6ff9135bc85bae84b630baf36dd12c5406f7'
  name 'Annotation Edit'
  homepage 'http://www.zeitanker.com/content/tools/zeitanker_tools/zeitanker_annotation_edit/'

  suite "Annotation Edit #{version.major_minor_patch}"
end
