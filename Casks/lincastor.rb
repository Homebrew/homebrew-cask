cask "lincastor" do
  version "4.0"
  sha256 :no_check

  url "https://onflapp.github.io/blog/releases/lincastor/LinCastor.zip"
  name "LinCastor"
  desc "Choose a web browser when opening a link"
  homepage "https://onflapp.github.io/blog/pages/LinCastorBrowser.html"

  livecheck do
    url "https://onflapp.github.io/blog/releases/lincastor/appcast.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :sierra"

  app "LinCastor.app"
end
