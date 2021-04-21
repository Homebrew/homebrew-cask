cask "simple-comic" do
  version "1.7_252"
  sha256 "4ddd18a02a79fc8201824e6ab99291c6d4c8680f79f94bc372bf71f0535def35"

  url "https://github.com/dancingtortoise/Simple-Comic/releases/download/#{version}/SimpleComic_#{version}.zip",
      verified: "github.com/dancingtortoise/Simple-Comic/"
  name "Simple Comic"
  desc "Comic viewer/reader"
  homepage "https://dancingtortoise.github.io/"

  app "Simple Comic.app"
end
