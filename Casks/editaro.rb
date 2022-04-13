cask "editaro" do
  version "1.7.1"
  sha256 "e5efe1de1283df05ad0bb2908c16c02bc0c34806119e83daefc0f049286f3c58"

  url "https://github.com/kkosuge/editaro/releases/download/#{version}/Editaro-#{version}-mac.zip",
      verified: "github.com/kkosuge/editaro/"
  name "Editaro"
  desc "Text editor"
  homepage "https://editaro.com/"

  app "Editaro.app"

  zap trash: "~/Library/ApplicationSupport/Editaro"
end
