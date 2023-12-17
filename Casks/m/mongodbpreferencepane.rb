cask "mongodbpreferencepane" do
  version :latest
  sha256 :no_check

  url "https://github.com/remysaissy/mongodb-macosx-prefspane/raw/master/download/MongoDB.prefPane.zip"
  name "MongoDB-PrefsPane"
  desc "Preference pane to control MongoDB Server"
  homepage "https://github.com/remysaissy/mongodb-macosx-prefspane"

  deprecate! date: "2023-12-17", because: :discontinued

  prefpane "MongoDB.prefPane"
end
