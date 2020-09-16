cask "cinder" do
  version "0.9.1"
  sha256 "41e85a595b17181ef46309d44fb5790de93ddf4a7abb5c7261b5a3ba87563337"

  url "https://libcinder.org/static/releases/cinder_#{version}_mac.zip"
  appcast "https://github.com/cinder/cinder/releases.atom"
  name "Cinder"
  homepage "https://libcinder.org/"

  suite "cinder_#{version}_mac"
end
