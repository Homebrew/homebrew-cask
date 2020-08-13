cask "rssowl" do
  version "2.2.1"
  sha256 "9a94beac7951937b6684aeabea323993860c43f8adbe959bb7a109dc22f0598c"

  # github.com/rssowl/RSSOwl/ was verified as official when first introduced to the cask
  url "https://github.com/rssowl/RSSOwl/releases/download/#{version}/RSSOwl.#{version}.dmg"
  appcast "https://github.com/rssowl/RSSOwl/releases.atom"
  name "RSSOwl"
  homepage "https://www.rssowl.org/"

  app "RSSOwl.app"
end
