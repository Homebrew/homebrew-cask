cask "keyfinder" do
  version "2.4"
  sha256 "a44f29e5eaaf5d51c3108bea9cb145599c993dfa8ee0b3770a0ecef4f048dfa3"

  url "http://www.ibrahimshaath.co.uk/keyfinder/bins/KeyFinder-OSX-#{version.dots_to_hyphens}.zip"
  name "KeyFinder"
  desc "Music key detection tool"
  homepage "http://www.ibrahimshaath.co.uk/keyfinder/"

  livecheck do
    url "http://www.ibrahimshaath.co.uk/keyfinder/"
    strategy :page_match do |page|
      v = page[%r{href=.*?/KeyFinder-OSX-(\d+(?:-\d+)*)\.zip}i, 1]
      v.tr("-", ".")
    end
  end

  app "KeyFinder-OSX/KeyFinder.app"
end
