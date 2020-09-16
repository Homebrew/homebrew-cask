cask "lincastor" do
  version "2.4"
  sha256 "d17d3148425a83b079aee04ee5f651b993a59c808219c2b64c2c57a3943d9819"

  # onflapp.github.io/blog/releases/ was verified as official when first introduced to the cask
  url "https://onflapp.github.io/blog/releases/lincastor/LinCastor.zip"
  appcast "https://onflapp.github.io/blog/releases/lincastor/appcast.xml"
  name "LinCastor"
  desc "Blog Site"
  homepage "https://onflapp.wordpress.com/lincastor/"

  depends_on macos: ">= :sierra"

  app "LinCastor.app"
end
