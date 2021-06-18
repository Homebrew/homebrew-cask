cask "rssowl" do
  version "2.2.1"
  sha256 "9a94beac7951937b6684aeabea323993860c43f8adbe959bb7a109dc22f0598c"

  url "https://github.com/rssowl/RSSOwl/releases/download/#{version}/RSSOwl.#{version}.dmg",
      verified: "github.com/rssowl/RSSOwl/"
  name "RSSOwl"
  homepage "https://www.rssowl.org/"

  app "RSSOwl.app"

  caveats do
    discontinued
  end
end
