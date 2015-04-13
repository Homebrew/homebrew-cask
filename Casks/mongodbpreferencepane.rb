cask :v1 => 'mongodbpreferencepane' do
  version :latest
  sha256 :no_check

  url 'https://github.com/remysaissy/mongodb-macosx-prefspane/raw/master/download/MongoDB.prefPane.zip'
  name 'MongoDB-PrefsPane'
  name 'mongodb-macosx-prefspane'
  homepage 'https://github.com/remysaissy/mongodb-macosx-prefspane'
  license :gpl

  prefpane 'MongoDB.prefPane'
end
