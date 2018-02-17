cask 'annotation-edit' do
  version '1.9.91.2'
  sha256 '2a1bbced6a82677a2f4f8f44dcf528c69885103d0a46cd98cd33d04d64e09d07'

  url 'http://www.zeitanker.com/common/Annotation_Edit.zip'
  appcast 'http://zeitanker.com/updates.rss',
          checkpoint: '1fb1c059d7287cbde7844f86fba0776ac6dac15b73115534219568949651587e'
  name 'Annotation Edit'
  homepage 'http://www.zeitanker.com/content/tools/zeitanker_tools/zeitanker_annotation_edit/'

  suite "Annotation Edit #{version.major_minor_patch}"
end
