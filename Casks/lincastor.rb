cask "lincastor" do
  version "2.4"
  sha256 :no_check

  # onflapp.github.io/blog/releases/ was verified as official when first introduced to the cask
  url "https://onflapp.github.io/blog/releases/lincastor/LinCastor.zip"
  appcast "https://onflapp.github.io/blog/releases/lincastor/appcast.xml"
  name "LinCastor"
  desc "Blog Site"
  homepage "https://onflapp.wordpress.com/lincastor/"

  depends_on macos: ">= :sierra"

  app "LinCastor.app"
end
