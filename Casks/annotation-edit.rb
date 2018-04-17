cask 'annotation-edit' do
  version '1.9.93'
  sha256 'e86f020d0c378df8f005c5b6688890ab109c789691e5ad2fa330020106c1e4df'

  url 'http://www.zeitanker.com/common/Annotation_Edit.zip'
  appcast 'http://zeitanker.com/updates.rss',
          checkpoint: '2e87e16c81421562cc4d16a51031f70ca5e67c8465b9c1a91b88f7a1e8005a31'
  name 'Annotation Edit'
  homepage 'http://www.zeitanker.com/content/tools/zeitanker_tools/zeitanker_annotation_edit/'

  suite "Annotation Edit #{version.major_minor_patch}"
end
