cask "lincastor" do
  version "2.4"
  sha256 :no_check

  url "https://onflapp.github.io/blog/releases/lincastor/LinCastor.zip",
      verified: "onflapp.github.io/blog/releases/"
  appcast "https://onflapp.github.io/blog/releases/lincastor/appcast.xml"
  name "LinCastor"
  desc "Blog Site"
  homepage "https://onflapp.wordpress.com/lincastor/"

  depends_on macos: ">= :sierra"

  app "LinCastor.app"
end
