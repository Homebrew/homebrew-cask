cask "cinder" do
  version "0.9.2"
  sha256 "b7576cc0259380d2730258f54021dfc2482f00413c005593e566eadf145e2381"

  url "https://libcinder.org/static/releases/cinder_#{version}_mac.zip"
  appcast "https://github.com/cinder/cinder/releases.atom"
  name "Cinder"
  homepage "https://libcinder.org/"

  suite "cinder_#{version}_mac"
end
